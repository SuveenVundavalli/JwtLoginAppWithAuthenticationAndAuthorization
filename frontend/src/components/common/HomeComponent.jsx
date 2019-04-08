import React, { Component } from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import NavbarComponent from "./NavbarComponent";
import FooterComponent from "./FooterComponent";
import "./HomeComponent.css"

class HomeComponent extends Component {
  render() {
    return (
      <div className="HomeComponent">
        <Router>
          <>
            <Route path="/" component={NavbarComponent} />
            <Route path="/" component={FooterComponent} />
          </>
        </Router>
      </div>
    );
  }
}

export default HomeComponent;
