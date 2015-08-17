class WriterDecorator
  def initialize(writer)
    @writer = writer
  end

  def write_line(line)
    @writer.write_line(line)
  end

  def pos
    @writer.pos
  end

  def rewind
    @writer.rewind
  end

  def close
    @writer.close
  end
end
