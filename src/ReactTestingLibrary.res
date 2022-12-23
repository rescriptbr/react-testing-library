type renderResult
type screen
type fireEvent
type queries
type renderOptions = {
  "container": Js.undefined<Dom.element>,
  "baseElement": Js.undefined<Dom.element>,
  "hydrate": Js.undefined<bool>,
  "wrapper": Js.undefined<Dom.element>,
  "queries": Js.undefined<queries>,
}

@module("@testing-library/react")
external cleanup: unit => unit = "cleanup"

@module("@testing-library/react")
external _act: (unit => Js.undefined<Js.Promise.t<'a>>) => unit = "act"

let act = callback =>
  _act(() => {
    callback()

    // (work-around) BuckleScript compiles `unit` to `0`, this will cause a warning as following:
    // Warning: The callback passed to act(...) function must return undefined, or a Promise.
    Js.Undefined.empty
  })

@module("@testing-library/react")
external _render: (React.element, renderOptions) => renderResult = "render"

let render = (~baseElement=?, ~container=?, ~hydrate=?, ~wrapper=?, ~queries=?, element) => {
  let baseElement_ = switch container {
  | Some(container') => Js.Undefined.return(container')
  | None => Js.Undefined.fromOption(baseElement)
  }
  let container_ = Js.Undefined.fromOption(container)

  _render(
    element,
    {
      "baseElement": baseElement_,
      "container": container_,
      "hydrate": Js.Undefined.fromOption(hydrate),
      "wrapper": Js.Undefined.fromOption(wrapper),
      "queries": Js.Undefined.fromOption(queries),
    },
  )
}

@get external container: renderResult => Dom.element = "container"

@get external baseElement: renderResult => Dom.element = "baseElement"

@send external unmount: renderResult => bool = "unmount"

@send
external rerender: (renderResult, React.element) => unit = "rerender"

@send
external asFragment: renderResult => Dom.element = "asFragment"

@module("@testing-library/react")
external screen: screen = "screen"

@module("@testing-library/react")
external fireEvent: fireEvent = "fireEvent"

@module("@testing-library/react")
external waitFor: (unit => 'a) => Promise.t<'a> = "waitFor"

// TODO: re-add options
// ByLabelText
@send
external getByLabelText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Dom.element = "getByLabelText"

@send
external getAllByLabelText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "getAllByLabelText"

@send
external queryByLabelText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Js.null<Dom.element> = "queryByLabelText"

@send
external queryAllByLabelText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "queryAllByLabelText"

@send
external findByLabelText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<Dom.element> = "findByLabelText"

@send
external findAllByLabelText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<array<Dom.element>> = "findAllByLabelText"

// ByPlaceholderText
@send
external getByPlaceholderText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Dom.element = "getByPlaceholderText"

@send
external getAllByPlaceholderText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "getAllByPlaceholderText"

@send
external queryByPlaceholderText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Js.null<Dom.element> = "queryByPlaceholderText"

@send
external queryAllByPlaceholderText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "queryAllByPlaceholderText"

@send
external findByPlaceholderText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<Dom.element> = "findByPlaceholderText"

@send
external findAllByPlaceholderText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<array<Dom.element>> = "findAllByPlaceholderText"

// ByText
@send
external getByText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Dom.element = "getByText"

@send
external getAllByText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "getAllByText"

@send
external queryByText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Js.null<Dom.element> = "queryByText"

@send
external queryAllByText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "queryAllByText"

@send
external findByText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<Dom.element> = "findByText"

@send
external findAllByText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<array<Dom.element>> = "findAllByText"

// ByAltText
@send
external getByAltText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Dom.element = "getByAltText"

@send
external getAllByAltText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "getAllByAltText"

@send
external queryByAltText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Js.null<Dom.element> = "queryByAltText"

@send
external queryAllByAltText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "queryAllByAltText"

@send
external findByAltText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<Dom.element> = "findByAltText"

@send
external findAllByAltText: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<array<Dom.element>> = "findAllByAltText"

// ByTitle
@send
external getByTitle: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Dom.element = "getByTitle"

@send
external getAllByTitle: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "getAllByTitle"

@send
external queryByTitle: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Js.null<Dom.element> = "queryByTitle"

@send
external queryAllByTitle: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "queryAllByTitle"

@send
external findByTitle: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<Dom.element> = "findByTitle"

@send
external findAllByTitle: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<array<Dom.element>> = "findAllByTitle"

// ByDisplayValue
@send
external getByDisplayValue: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Dom.element = "getByDisplayValue"

@send
external getAllByDisplayValue: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "getAllByDisplayValue"

@send
external queryByDisplayValue: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Js.null<Dom.element> = "queryByDisplayValue"

@send
external queryAllByDisplayValue: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "queryAllByDisplayValue"

@send
external findByDisplayValue: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<Dom.element> = "findByDisplayValue"

@send
external findAllByDisplayValue: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<array<Dom.element>> = "findAllByDisplayValue"

// ByRole
@send
external getByRole: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Dom.element = "getByRole"

@send
external getAllByRole: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "getAllByRole"

@send
external queryByRole: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Js.null<Dom.element> = "queryByRole"

@send
external queryAllByRole: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "queryAllByRole"

@send
external findByRole: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<Dom.element> = "findByRole"

@send
external findAllByRole: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<array<Dom.element>> = "findAllByRole"

// ByTestId
@send
external getByTestId: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Dom.element = "getByTestId"

@send
external getAllByTestId: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "getAllByTestId"

@send
external queryByTestId: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Js.null<Dom.element> = "queryByTestId"

@send
external queryAllByTestId: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => array<Dom.element> = "queryAllByTestId"

@send
external findByTestId: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<Dom.element> = "findByTestId"

@send
external findAllByTestId: (
  renderResult,
  ~matcher: @unwrap [#Str(string) | #RegExp(Js.Re.t) | #Func((string, Dom.element) => bool)],
) => Promise.t<array<Dom.element>> = "findAllByTestId"

@send
external _debug: (renderResult, Js.undefined<Dom.element>, Js.undefined<int>) => unit = "debug"

let debug = (renderResult, ~el=?, ~maxLengthToPrint=?, ()) =>
  renderResult->_debug(Js.Undefined.fromOption(el), Js.Undefined.fromOption(maxLengthToPrint))

// fireEvent functions
@send external click: (fireEvent, Dom.element) => unit = "click"
@send external mouseOver: (fireEvent, Dom.element) => unit = "mouseOver"
