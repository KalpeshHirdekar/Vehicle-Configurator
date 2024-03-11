import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";

function StandardConfiguration({ onSelect, price }) {
  const [standardComponents, setStandardComponents] = useState([]);
  const [selectedComponent, setSelectedComponent] = useState("");
  const [selectedComponentPrice, setSelectedComponentPrice] = useState(0);
  const [selectedDetails, setSelectedDetails] = useState({
    component: "",
    componentPrice: 0,
    modelPrice: 0,
    quantity: 0,
    finalPrice: 0,
  });
  const { model_id, quantity } = useParams();

  useEffect(() => {
    // Fetch standard components from the API based on the model_id
    fetch(`http://localhost:8080/api/std/${model_id}`)
      .then((response) => {
        if (!response.ok) {
          throw new Error(`HTTP error! Status: ${response.status}`);
        }
        return response.json();
      })
      .then((data) => setStandardComponents(data))
      .catch((error) =>
        console.error("Error fetching standard components:", error)
      );
  }, [model_id]);

  const handleComponentChange = (event) => {
    const selectedComponent = event.target.value;
    const deltaPrice = getDeltaPrice(selectedComponent);
    setSelectedComponentPrice(deltaPrice);
    setSelectedComponent(selectedComponent);

    const selectedDetails = {
      component: selectedComponent,
      componentPrice: deltaPrice,
      modelPrice: price,
      quantity: quantity,
      finalPrice: quantity * price + deltaPrice,
    };

    setSelectedDetails(selectedDetails);

    onSelect(selectedDetails); // Pass the selected details to the parent component
  };

  const getDeltaPrice = (component) => {
    // Assuming component is in the form "ComponentName,-200.0"
    const [, deltaPriceString] = component.split(","); // Splitting at the comma
    const deltaPrice = parseFloat(deltaPriceString.trim()); // Parsing the numerical value
    return isNaN(deltaPrice) ? 0 : deltaPrice; // Handling cases where parsing fails
  };

  if (standardComponents.length === 0) {
    return (
      <div>
        <h2>Standard Configuration</h2>
        <p>Nothing to configure here</p>
      </div>
    );
  }

  return (
    <div>
      <h2>Standard Configuration</h2>
      <p>
        This is the standard configuration section. Here you can select options
        related to the standard features of the car.
      </p>
      <div>
        <label htmlFor="seats">Seats:</label>
        <select
          id="seats"
          onChange={handleComponentChange}
          value={selectedComponent}>
          {standardComponents.map((component) => (
            <option key={component} value={component}>
              {component}
            </option>
          ))}
        </select>
      </div>
      <div>
        <p>Selected Standard Component: {selectedDetails.component}</p>
        <p>Selected Component Price: {selectedDetails.componentPrice}</p>
        <p>Model Price: {selectedDetails.modelPrice}</p>
        <p>Quantity: {selectedDetails.quantity}</p>
        <p>
          Final Price: {selectedDetails.finalPrice}
          {/* Calculate the final price based on selected component's delta price and other factors */}
        </p>
      </div>
    </div>
  );
}

export default StandardConfiguration;
