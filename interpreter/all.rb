require 'find'

class All < Expression
  def evaluate(dir)
    results = []
    File.find(dir) do |f|
      next unless File.file? f
      results << f
    end
    results
  end
end
