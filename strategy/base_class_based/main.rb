require_relative 'report'
require_relative 'html_formatter'
require_relative 'plain_text_formatter'

report = Report.new(HtmlFormatter.new)
puts '((((( HTML REPORT )))))'
report.output_report

puts
puts '((((( PLAIN TEXT REPORT )))))'
report.formatter = PlainTextFormatter.new
report.output_report
