require 'find'

class FileName < Expression
  def initialize(pattern)
    @pattern = pattern
  end

  def evaluate(dir)
    results = []
    Find.find(dir) do |f|
      next unless File.file? f
      name = File.basename(f)
      results << f if File.fnmatch(@pattern, name)
    end
    results
  end
end
