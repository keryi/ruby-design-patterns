require_relative 'computer_builder'

builder = ComputerBuilder.new
builder.turbo
builder.add_dvd
computer = builder.computer
