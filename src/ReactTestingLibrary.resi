type renderResult

type screen

type fireEvent

type queries

type renderOptions = {
  "baseElement": Js.undefined<Dom.element>,
  "container": Js.undefined<Dom.element>,
  "hydrate": Js.undefined<bool>,
  "queries": Js.undefined<queries>,
  "wrapper": Js.undefined<Dom.element>,
}

@module("@testing-library/react")
external cleanup: unit => unit = "cleanup"

let act: (unit => unit) => unit

let render: (
  ~baseElement: Dom.element=?,
  ~container: Dom.element=?,
  ~hydrate: bool=?,
  ~wrapper: Dom.element=?,
  ~queries: queries=?,
  React.element,
) => renderResult

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

let debug: (renderResult, ~el: Dom.element=?, ~maxLengthToPrint: int=?, unit) => unit

@send external click: (fireEvent, Dom.element) => unit = "click"

@send external mouseOver: (fireEvent, Dom.element) => unit = "mouseOver"
