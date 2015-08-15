class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(&formatter)
    @title = 'Monthly Report'
    @text = ['Monthly Revenue', 'Weekly Revenue']
    @formatter = formatter
  end

  def output_report
    @formatter.call(self)
  end
end
