defmodule Bot.Motor do
  @right_motor "/sys/class/tacho-motor/motor2"
  @left_motor "/sys/class/tacho-motor/motor0"

  @commands %{
    forever: "run-forever",
    stop: "stop"
  }

  def start(motor_atom, speed) do
    motor_atom 
    |> get_motor()
    |> Path.join("speed_sp")
    |> File.write(Integer.to_string(speed))

    motor_atom 
    |> get_motor() 
    |> Path.join("command")
    |> File.write(@commands[:forever])
  end

  def stop(motor_atom) do
    motor_atom 
    |> get_motor()
    |> Path.join("command")
    |> File.write(@commands[:stop])
  end

  defp get_motor(motor_atom) do
    case motor_atom do
      :left -> @left_motor
      :right -> @right_motor
    end    
  end
end
