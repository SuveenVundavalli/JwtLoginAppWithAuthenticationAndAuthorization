import React, { Component } from "react";
import "./App.css";
import "bootstrap/dist/css/bootstrap.min.css";
import $ from "jquery";
import Popper from "popper.js";
import "bootstrap/dist/js/bootstrap.bundle.min";
import HomeComponent from "./components/common/HomeComponent";

class App extends Component {
  render() {
    return (
      <div className="App">
        <HomeComponent />
      </div>
    );
  }
}

export default App;
