require_relative '../simple_writer'

module TimeStampingWriter
  def write_line(line)
    super("#{Time.now}: #{line}")
  end
end

module NumberingWriter
  def write_line(line)
    @line_number = 1 unless @line_number
    super("#{@line_number}: #{line}")
    @line_number += 1
  end
end

w = SimpleWriter.new 'test.txt'
w.extend(TimeStampingWriter)
w.extend(NumberingWriter)
w.write_line 'Nothing to see here!'
