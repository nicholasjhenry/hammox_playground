defmodule HammoxPlaygroundTest do
  use ExUnit.Case

  import Hammox

  setup :verify_on_exit!

  defmock(HammoxPlayground.Mock, for: HammoxPlayground.Behaviour)

  test "demonstrate hammox exception" do
    expect(HammoxPlayground.Mock, :perform, fn _account -> true end)

    HammoxPlayground.Mock.perform(Decimal.new(99) |> IO.inspect(structs: false))
  end
end
