# Curious

Get and show links from a website

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `curious` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:curious, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/curious](https://hexdocs.pm/curious).


## Usage

```elixir
iex> Curious.run("https://www.globo.com")
1. http://link.com
2. http://anotherlink.com
3. http://anotherlink.com
...
```
