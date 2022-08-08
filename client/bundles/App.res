@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  <>
    <NavBar />
    {switch url.path {
    | list{"signup"} => <Signup />
    | list{"login"} => <Login />
    | list{} => <HomePage />
    | _ => <HomePage />
    }}
  </>
}
