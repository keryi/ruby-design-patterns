class Writable < Expression
  def evaluate(dir)
    results = []
    Find.find(dir) do |f|
      next unless File.file? f
      results << f if File.writable? f
    end
    results
  end
end
