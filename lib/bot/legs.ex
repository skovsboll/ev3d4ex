defmodule Bot.Legs do
  alias Bot.Motor

  def forward(speed) do
  	[:left, :right]
    |> Enum.each(&Motor.start(&1, speed))
  end

  def stop() do
    [:left, :right]
    |> Enum.each(&Motor.stop(&1))
  end

  def turn(direction, speed) do
  	right_speed = if direction == :left, do: -speed, else: speed
  	left_speed = if direction == :left, do: speed, else: -speed
  	Motor.start(:left, left_speed)
  	Motor.start(:right, right_speed)
  end

end
