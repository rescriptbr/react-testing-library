type renderResult
type screen
type fireEvent

@module("@testing-library/react")
external render: React.element => renderResult = "render"

@module("@testing-library/react")
external screen: screen = "screen"

@module("@testing-library/react")
external fireEvent: fireEvent = "fireEvent"

@module("@testing-library/react")
external waitFor: (unit => 'a) => Promise.t<'a> = "waitFor"

@get
external container: renderResult => Dom.element = "container"

// screen functions
@send external getByText: (screen, string) => Dom.element = "getByText"
@send external getByTestId: (screen, string) => Dom.element = "getByTestId"
@send external findByText: (screen, string) => Promise.t<Dom.element> = "findByText"
@send @return(nullable)
external queryByText: (screen, string) => option<Dom.element> = "queryByText"

// fireEvent functions
@send external click: (fireEvent, Dom.element) => unit = "click"
@send external mouseOver: (fireEvent, Dom.element) => unit = "mouseOver"
