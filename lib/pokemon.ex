defmodule Pokemon do
  alias Pokemon.Trainer

  defdelegate create_trainer(params), to: Trainer.Create, as: :call
end
