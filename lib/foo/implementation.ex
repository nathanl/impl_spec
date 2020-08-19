defmodule Foo.Implementation do
  @behaviour Foo.Behaviour

  @impl Foo.Behaviour
  def foo?(val) do
    "honk" # violates the typespec
  end
end
