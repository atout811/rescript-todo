import ReactOnRails from "react-on-rails";

import { make as HomePage } from "../bundles/App.bs";
// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HomePage,
});
