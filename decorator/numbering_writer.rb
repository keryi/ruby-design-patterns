require_relative 'writer_decorator'

class NumberingWriter < WriterDecorator
  def initialize(writer)
    super writer
    @line_number = 1
  end

  def write_line(line)
    @writer.write_line("#{@line_number} #{line}")
    @line_number += 1
  end
end
