Dynamo.under_test(Quadratic.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Quadratic.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
