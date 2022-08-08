%%raw("import './NavBar.css'")

@react.component
let make = () => {
  <div className="navbar">
    <div
      className="logo"
      onClick={_ => {
        RescriptReactRouter.push("/")
      }}>
      {"Todo App"->React.string}
    </div>
    <div className="auth">
      <div
        className="nav-element"
        onClick={_ => {
          RescriptReactRouter.push("login")
        }}>
        {"Login"->React.string}
      </div>
      <div
        className="nav-element"
        onClick={_ => {
          RescriptReactRouter.push("signup")
        }}>
        {"Signup"->React.string}
      </div>
    </div>
  </div>
}
