class Bigger < Expression
  def initialize(size)
    @size = size
  end

  def evaluate(dir)
    results = []
    Find.find(dir) do |f|
      next unless File.file? f
      results << p if File.size(f) > @size
    end
    results
  end
end
