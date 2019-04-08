import { Formik, Form, Field, ErrorMessage } from "formik";
import React, { Component } from "react";

class LoginComponent extends Component {
  constructor(props) {
    super(props);
    this.state = {
      usernameOrEmail: "",
      password: ""
    };
    this.onSubmit = this.onSubmit.bind(this);
    this.validate = this.validate.bind(this);
  }

  onSubmit(values) {}
  validate(values) {
    let errors = {};
    if (!values.usernameOrEmail) {
      errors.usernameOrEmail = "Enter a username or Email";
    } else if (values.description.length < 4) {
      errors.description =
        "Enter atlease 4 characters in Username or Email field";
    }

    if (!values.password) {
      errors.password = "Enter password";
    }
    return errors;
  }
  render() {
    let { usernameOrEmail, password } = this.state;
    return (
      <div className="LoginComponent">
        <div className="h2">Login Component</div>
        <div className="container">
          <Formik
            initialValues={{ usernameOrEmail, password }}
            onSubmit={this.onSubmit}
            validate={this.validate}
            validateOnBlur={false}
            validateOnChange={false}
            enableReinitialize={true}
          >
            {props => (
              <Form>
                <ErrorMessage
                  name="usernameOrEmail"
                  component="div"
                  className="alert alert-warning"
                />
                <ErrorMessage
                  name="password"
                  component="div"
                  className="alert alert-warning"
                />
                <fieldset className="form-group">
                  <label htmlFor="">Username or Email</label>
                  <Field
                    className="form-control"
                    type="text"
                    name="usernameOrEmail"
                  />
                </fieldset>
                <fieldset className="form-group">
                  <label htmlFor="">Password</label>
                  <Field className="form-control" type="password" name="password" />
                </fieldset>
                <button className="btn btn-success" type="submit">
                  Add
                </button>
              </Form>
            )}
          </Formik>
        </div>
      </div>
    );
  }
}

export default LoginComponent;
