require 'forwardable'

class WriterDecorator
  extend Forwardable

  def_delegators :@writer, :write_line, :pos, :rewind, :close
  
  def initialize(writer)
    @writer = writer
  end
end
