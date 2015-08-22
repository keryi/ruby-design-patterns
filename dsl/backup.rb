require_relative 'data_source'

class Backup
  attr_accessor :backup_directory, :interval
  attr_reader :data_sources

  def initialize
    @data_sources = []
    @backup_directory = '/backup'
    @interval = 60
    yield(self) if block_given?
    PackRat.instance.register_backup(self)
  end

  def backup(dir, expr)
    files = Dir.glob(expr)
    @data_sources << DataSource.new(files)
  end

  def to(backup_directory)
    @backup_directory = backup_directory
  end

  def interval(minutes)
    @interval = minutes
  end

  def run
    while true
      backup_dir = Time.new.ctime.tr(" :", "_")
      backup_path = File.join(@backup_directory, backup_dir)
      @data_sources.each { |source| source.backup(backup_path) }
      sleep @interval * 60
    end
  end
end
