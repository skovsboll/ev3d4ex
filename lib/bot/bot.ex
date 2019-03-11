defmodule EV3D4.Bot do
	use GenServer
	require Logger
  alias Bot.Legs

	@name __MODULE__

  def start_link() do
    GenServer.start_link(@name, [], [name: @name])
  end

  def init(_init_arg) do
    move()
  end

	def move() do
    Legs.forward(200)
    Process.sleep(2000)
    Legs.turn(:right, 200)
    Process.sleep(4000)
    Legs.stop()
    Process.sleep(1000)
    Legs.turn(:left, 200)
    Process.sleep(1500)
    Legs.forward(-200)
    Process.sleep(1000)
    move()
	end 

end