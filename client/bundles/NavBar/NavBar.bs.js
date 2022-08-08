// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as RescriptReactRouter from "@rescript/react/src/RescriptReactRouter.bs.js";

import './NavBar.css'
;

function NavBar(Props) {
  return React.createElement("div", {
              className: "navbar"
            }, React.createElement("div", {
                  className: "logo",
                  onClick: (function (param) {
                      return RescriptReactRouter.push("/");
                    })
                }, "Todo App"), React.createElement("div", {
                  className: "auth"
                }, React.createElement("div", {
                      className: "nav-element",
                      onClick: (function (param) {
                          return RescriptReactRouter.push("login");
                        })
                    }, "Login"), React.createElement("div", {
                      className: "nav-element",
                      onClick: (function (param) {
                          return RescriptReactRouter.push("signup");
                        })
                    }, "Signup")));
}

var make = NavBar;

export {
  make ,
  
}
/*  Not a pure module */