class SlickButton
  attr_accessor :command

  def initialize(command)
    @command = command
  end

  def on_clicked
    @command.execute if @command
  end
end
