require_relative 'simple_writer'
require_relative 'numbering_writer'

writer = NumberingWriter.new(SimpleWriter.new('test.txt'))
writer.write_line('Nothing to see here!')
