defmodule Inmana.Welcomer do

	def welcome(%{"name" => name, "age" => age}) do
		age = String.to_integer(age)

		name
		|> String.trim()
		|> String.downcase()
		|> evaluate(age)
	end

	defp evaluate("ricardo", 20) do
		{:ok, "You are owner"}
	end

	defp evaluate(name, age) when age >= 18 do
		{:ok, "Hello #{name}"}
	end

	defp evaluate(name, _age) do
		{:error, "You are nothing #{name}"}
	end

end
