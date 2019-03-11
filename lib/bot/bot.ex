defmodule EV3D4.Bot do
	use GenServer
	require Logger

	@name __MODULE__

  def start_link() do
    GenServer.start_link(@name, [], [name: @name])
  end

  def init(_init_arg) do
    
  end

	def blink() do

	end 

end