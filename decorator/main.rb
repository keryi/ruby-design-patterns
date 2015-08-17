require_relative 'simple_writer'
require_relative 'numbering_writer'
require_relative 'check_summing_writer'
require_relative 'time_stamping_writer'

writer = CheckSummingWriter.new(TimeStampingWriter.new(NumberingWriter.new(SimpleWriter.new('test.txt'))))
writer.write_line('Nothing to see here!')
