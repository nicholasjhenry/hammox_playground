defmodule HammoxPlayground do
  defmodule Behaviour do
    @moduledoc false

    @callback perform(Decimal.t()) :: boolean
  end
end
