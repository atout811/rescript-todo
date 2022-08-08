%%raw("import './HomePage.css'")

@react.component
let make = () => {
  <>
    <div className="title-container">
      <h2 className="title"> {"What is Todo For Today?"->React.string} </h2>
    </div>
  </>
}
