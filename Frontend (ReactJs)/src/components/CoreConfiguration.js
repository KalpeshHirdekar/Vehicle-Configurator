import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";

function CoreConfiguration({ onSelect, price }) {
  const [coreComponents, setCoreComponents] = useState([]);
  const [selectedModel, setSelectedModel] = useState("");
  const [selectedModelPrice, setSelectedModelPrice] = useState(0);
  
  const { model_id, quantity } = useParams();

  useEffect(() => {
    // Fetch core components from the API based on the modelId
    fetch(`http://localhost:8080/api/core/${model_id}`)
      .then((response) => {
        if (!response.ok) {
          throw new Error(`HTTP error! Status: ${response.status}`);
        }
        return response.json();
      })
      .then((data) => setCoreComponents(data))
      .catch((error) =>
        console.error("Error fetching core components:", error)
      );
  }, [model_id]);

  const handleModelChange = (event) => {
    const selectedModel = event.target.value;
    const deltaPrice = getDeltaPrice(selectedModel);
    setSelectedModelPrice(deltaPrice);
    setSelectedModel(selectedModel);

    const selectedData = {
      selectedModel: selectedModel,
      selectedModelPrice: deltaPrice,
      price: price,
      quantity: quantity
    };

    console.log(selectedData); // Display the selected data object in the console

    sessionStorage.setItem("selectedData",JSON.stringify(selectedData)); // Save the selected data to session storage for later
  };

  const getDeltaPrice = (model) => {
    // Assuming model is in the form "5-Speed Manual Transmission,-200.0"
    const [, deltaPriceString] = model.split(","); // Splitting at the comma
    const deltaPrice = parseFloat(deltaPriceString.trim()); // Parsing the numerical value
    return isNaN(deltaPrice) ? 0 : deltaPrice; // Handling cases where parsing fails
  };

  if (coreComponents.length === 0) {
    return (
      <div>
        <h2>Core Configuration</h2>
        <p>Nothing to configure here</p>
      </div>
    );
  }

  return (
    <div>
      <h2>Core Configuration</h2>
      <p>
        This is the core configuration section. Here you can select options
        related to the core features of the car.
      </p>
      <div>
        <label htmlFor="engine">Engine:</label>
        <select id="engine" onChange={handleModelChange} value={selectedModel}>
          {coreComponents.map((component) => (
            <option key={component} value={component}>
              {component}
            </option>
          ))}
        </select>
      </div>
      <div>
        <p>Selected Segment: {selectedModel}</p>
        <p>Selected Segment Price: {selectedModelPrice}</p>
        <p>Model Price: {price}</p>
        <p>Quantity: {quantity}</p>
        <p>
          Final Price:{quantity * price + selectedModel}
          {/* Calculate the final price based on selected model's delta price and other factors */}
        </p>
      </div>
    </div>
  );
}

export default CoreConfiguration;
