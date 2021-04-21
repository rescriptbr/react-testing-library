# @rescriptbr/react-testing-library &middot; 

> [ReScript](https://rescript-lang.org) bindings for [react-testing-library](https://github.com/testing-library/react-testing-library).

## Documentation

The documentions is WIP, see [`src/__tests__`](src/__tests__) for some examples.

## Installation

```sh
$ yarn add --dev @rescriptbr/react-testing-library

# or..

$ npm install --save-dev @rescriptbr/react-testing-library
```

## Usage

#### Add to `bsconfig.json`

```json
{
  "bs-dev-dependencies": [
    "@rescriptbr/react-testing-library"
  ]
}
```

#### With [`bs-jest`](//github.com/glennsl/bs-jest)

```ocaml
/* Component_Test.res */

open Jest
open Expect
open ReactTestingLibrary

test("Component renders", () =>
  <div style=ReactDOM.Style.make(~color="rebeccapurple", ())>
    <h1> {React.string("Heading")} </h1>
  </div>
  |> render
  |> container
  |> expect
  |> toMatchSnapshot
)
```

## Examples

See [`src/__tests__`](src/__tests__) for some examples.

## Development

```sh
$ git clone https://github.com/wyze/bs-react-testing-library.git
$ cd bs-react-testing-library
$ yarn # or `npm install`
```

## Build

```sh
$ yarn build
```

## Test

```sh
$ yarn test
```

## Change Log

> [Full Change Log](changelog.md)

## License

MIT ©

