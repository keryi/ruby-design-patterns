require_relative 'computer'
require_relative 'peripherals'

class ComputerBuilder
  attr_reader :computer

  def initialize
    @computer = Computer.new
  end

  def turbo
    @computer.motherboard.cpu = TurboCPU.new
  end

  def display=(display)
    @computer.display = display
  end

  def memory_size=(size)
    @computer.motherboard.memory_size = size
  end

  def add_cd(writer = false)
    @computer.drives << Drive.new(:cd, 100, writer)
  end

  def add_dvd(writer = false)
    @computer.drives << Drive.new(:dvd, 100, writer)
  end

  def add_hard_disk(size)
    @computer.drives << Drive.new(:hard_disk, size, true)
  end
end
