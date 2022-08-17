import ReactOnRails from "react-on-rails";
import { make as HomePage } from "../bundles/HomePage/HomePage.bs";

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HomePage,
});
