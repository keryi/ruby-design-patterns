class Report
  def initialize
    @title = 'Report'
    @text = ['Monthly earning', 'Weekly earning']
  end

  def output_report
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  def output_start
    raise 'called abstract method: output_start'  
  end

  def output_head
    raise 'called abstract method: output_head'
  end

  def output_body_start
    raise 'called abstract method: output_body_start'
  end

  def output_body
    @text.each { |line| output_line(line) }
  end

  def output_body_end
    raise 'called abstracct method: output_body_end'
  end

  def output_end
    raise 'called abstract method: output_end'
  end
end
