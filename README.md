# ExMagic

[`libmagic`][lm] bindings for Elixir.


## Examples

```elixir
ExMagic.from_buffer("foo")
{:ok, "text/plain"}

ExMagic.from_buffer!("foo")
"text/plain"

ExMagic.version()
537
```


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `exmagic` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:exmagic, "~> 0.0.4"}]
    end
    ```


[lm]: http://linux.die.net/man/3/libmagic
