import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";

function ExteriorConfiguration({ onSelect, price }) {
  const [exteriorComponents, setExteriorComponents] = useState([]);
  const [selectedComponent, setSelectedComponent] = useState("");
  const [selectedComponentPrice, setSelectedComponentPrice] = useState(0);
  const { model_id, quantity } = useParams();

  useEffect(() => {
    // Fetch exterior components from the API based on the modelId
    fetch(`http://localhost:8080/api/exterior/${model_id}`)
      .then((response) => {
        if (!response.ok) {
          throw new Error(`HTTP error! Status: ${response.status}`);
        }
        return response.json();
      })
      .then((data) => setExteriorComponents(data))
      .catch((error) =>
        console.error("Error fetching exterior components:", error)
      );
  }, [model_id]);

  const handleComponentChange = (event) => {
    const selectedComponent = event.target.value;
    const deltaPrice = getDeltaPrice(selectedComponent);
    setSelectedComponentPrice(deltaPrice);
    setSelectedComponent(selectedComponent);

    const selectedDetails = {
      exterior: {
        selectedComponent: selectedComponent,
        selectedComponentPrice: deltaPrice,
        modelPrice: price,
        quantity: quantity,
        finalPrice: quantity * price + deltaPrice,
      },
    };

    onSelect(selectedDetails); // Pass the selected details to the parent component
  };

  const getDeltaPrice = (component) => {
    // Assuming component is in the form "ComponentName,-200.0"
    const [, deltaPriceString] = component.split(","); // Splitting at the comma
    const deltaPrice = parseFloat(deltaPriceString.trim()); // Parsing the numerical value
    return isNaN(deltaPrice) ? 0 : deltaPrice; // Handling cases where parsing fails
  };

  if (exteriorComponents.length === 0) {
    return (
      <div>
        <h2>Exterior Configuration</h2>
        <p>Nothing to configure here</p>
      </div>
    );
  }

  return (
    <div>
      <h2>Exterior Configuration</h2>
      <p>
        This is the exterior configuration section. Here you can select options
        related to the exterior features of the car.
      </p>
      <div>
        <label htmlFor="exteriorComponent">Exterior Component:</label>
        <select
          id="exteriorComponent"
          onChange={handleComponentChange}
          value={selectedComponent}>
          {exteriorComponents.map((component) => (
            <option key={component} value={component}>
              {component}
            </option>
          ))}
        </select>
      </div>
      <div>
        <p>Selected Exterior Component: {selectedComponent}</p>
        <p>Selected Component Price: {selectedComponentPrice}</p>
        <p>Model Price: {price}</p>
        <p>Quantity: {quantity}</p>
        <p>
          Final Price: {quantity * price + selectedComponentPrice}
          {/* Calculate the final price based on selected component's delta price and other factors */}
        </p>
      </div>
    </div>
  );
}

export default ExteriorConfiguration;
