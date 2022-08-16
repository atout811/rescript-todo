import ReactOnRails from "react-on-rails";
import React from "react";

import { make as HomePage } from "./bundles/HomePage/HomePage.bs";

const Cont = (props) => {
  return <HomePage todos={props} />;
};

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HomePage,
});
