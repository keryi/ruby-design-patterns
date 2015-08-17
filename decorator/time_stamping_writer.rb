class TimeStampingWriter < WriterDecorator
  def write_line(line)
    @writer.write_line("#{Time.now}: #{line}")
  end
end
