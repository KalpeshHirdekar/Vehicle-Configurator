// Home.js
import React, { useState } from "react";
import ConfiguratorContainer from "./ConfiguratorContainer";
import "./Home.css"; // Import additional CSS file for Home page styling
import ImageGallery2 from "../pages/ImageGallery2";
import { FaCar } from "react-icons/fa";

function Home() {
  const [showConfigurator, setShowConfigurator] = useState(false);

  const handleStartBrowsing = () => {
    setShowConfigurator(true);

    // Scroll to the ConfiguratorContainer section
    const configuratorContainer = document.getElementById(
      "configurator-container"
    );
    if (configuratorContainer) {
      configuratorContainer.scrollIntoView({ behavior: "smooth" });
    }
  };

  return (
    <div className="home-container">
      <div className="hero-section">
        <video
          src="../car.mp4"
          alt="Automotive Industry"
          className="hero-video"
          autoPlay
          muted
          loop
        />
        <div className="hero-overlay">
          <div className="btn__container">
            <a onClick={handleStartBrowsing} href="#" className="btn">
              <i className="fas fa-user-alt">
                <FaCar />
              </i>
              <span>Browse</span>
            </a>
          </div>
        </div>
      </div>

      {showConfigurator && (
        <div id="configurator-container">
          <ConfiguratorContainer />
        </div>
      )}

      <ImageGallery2 />

      <div className="reviews-section">
        <h2>Customer Reviews</h2>
        <div className="reviews-container">
          <div className="review-card">
            <img
              src="images/jayant_pongshe.jpeg"
              alt="Customer 1"
              className="review-image"
            />
            <div className="review-content">
              <h3>Jayant Ponkshe</h3>
              <div className="star-rating">
                &#9733;&#9733;&#9733;&#9733;&#9733;
              </div>
              <p>
              <h3>“Most Knowledgeable”</h3>
                I've purchased many cars over the years - Vehicle
                Configurator is by far the easiest Highly recommend
                working with Vehicle Confiugurator to buy your next vehicle!
              </p>
            </div>
          </div>

          <div className="review-card">
            <img
              src="images/ketki_mam.jpeg"
              alt="Customer 2"
              className="review-image"
            />
            <div className="review-content">
              <h3>Ketki Acharya</h3>
              <div className="star-rating">
                &#9733;&#9733;&#9733;&#9733;&#9733;
              </div>
              <p>
              <h3>“Great Experience!”</h3>
                Great buying experience. Great cars with rare features.
                I would definitely go back for my next car.
              </p>
            </div>
          </div>

          <div className="review-card">
            <img
              src="images/nitin_vijaykar.jpeg"
              alt="Customer 3"
              className="review-image"
            />
            <div className="review-content">
              <h3>Nitin Vijaykar</h3>
              <div className="star-rating">
                &#9733;&#9733;&#9733;&#9733;&#9733;
              </div>
              <p>
                <h3>"Vehicle configurator"</h3>
                 Thank you for a great deal on  Audi allroad.It was absolutely
                flawless just as decribed. I must admit that the concpet of purchasing a high-end vehicle 
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Home;
