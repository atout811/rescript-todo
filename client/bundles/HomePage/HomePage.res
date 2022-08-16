%%raw("import './HomePage.css'")
type todo = {id: string, title: string}

@val @scope(("document", "location"))
external reload: unit => unit = "reload"

// module Response = {
//   type t<'data>
//   @send external json: t<'data> => Promise.t<'data> = "json"
// }

@module("axios") external axiosPost: (string, 'a) => Promise.t<'a> = "post"

@react.component
let make = (~todos) => {
  Js.log(todos)
  let (state, setState) = React.useState(_ => todos)
  let (text, setText) = React.useState(_ => "")

  let handleClick = () => {
    open Promise
    let _ = axiosPost("/todos", {"text": text})->then(data => Js.log(data)->resolve)
  }
  let handleChange = e => {
    let value = ReactEvent.Form.currentTarget(e)["value"]
    setText(_ => value)
  }

  let items = Belt.Array.mapWithIndex(state, (i, todo) => {
    // Only do this if items have no stable id
    <li key={Belt.Int.toString(i)}> {todo.title->React.string} </li>
  })
  <>
    <div className="title-container">
      <h2 className="title"> {"what is today's goal?"->React.string} </h2>
    </div>
    <div>
      <label htmlFor="todo-title"> {"enter todo title"->React.string} </label>
      <input onChange={handleChange} name="todo-title" type_="text" />
    </div>
    <button onClick={_ => handleClick()} type_="submit"> {"Add todo"->React.string} </button>
    <div className="container"> {items->React.array} </div>
  </>
}
