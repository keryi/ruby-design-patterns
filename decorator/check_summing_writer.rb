class CheckSummingWriter < WriterDecorator
  attr_reader :check_sum

  def initialize(writer)
    @writer = writer
    @check_sum = 0
  end

  def write_line(line)
    line.each_byte { |byte| @check_sum = (@check_sum + byte) % 256 }
    @check_sum += '\n'.ord % 256
    @writer.write_line(line)
  end
end
