defmodule Pokemon.Trainer.Create do
  alias Pokemon.{Repo,Trainer}

  def call(params) do
    params
    |> Trainer.build()
    |> create_trainer()
  end

  defp create_trainer({:ok, struct}), do: Repo.insert(struct)

  defp create_trainer({:error, _changeset} = error), do: error
end
