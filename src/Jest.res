type testable<'a>
type jestFn

// lifecycle
@val external afterEach: ((. unit) => unit) => unit = "afterEach"
@val external beforeEach: ((. unit) => unit) => unit = "beforeEach"

// Methods
@val external describe: (string, (. unit) => unit) => unit = "describe"
@val external it: (string, (. unit) => unit) => unit = "it"
@val external test: (string, (. unit) => unit) => unit = "test"
@val external testAsync: (string, (. unit) => Promise.t<'a>) => unit = "test"

// Expect
@val external expect: 'value => testable<'value> = "expect"
@val external expectFn: jestFn => testable<'value> = "expect"
@val external expectArray: array<'value> => testable<'value> = "expect"

// Mock
@val external fn1: 'a => 'b = "jest.fn"

@send external toHaveBeenCalledWith: ('a, 'params) => unit = "toHaveBeenCalledWith"
@send external toBe: (testable<'value>, 'value) => unit = "toBe"
@send external toEqual: (testable<'value>, 'value) => 'b = "toEqual"
@send external toContain: (testable<'value>, 'value) => testable<'value> = "toContain"
@send external toHaveBeenCalled: (testable<'value>, unit) => testable<'value> = "toHaveBeenCalled"
@send
external toHaveBeenCalledTimes: (testable<'value>, int) => testable<'value> =
  "toHaveBeenCalledTimes"
@send external toMatchSnapshot: testable<'value> => unit = "toMatchSnapshot"
