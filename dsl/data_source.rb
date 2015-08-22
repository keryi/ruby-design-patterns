require 'fileutils'

class DataSource
  attr_reader :files

  def initialize(files)
    @files = files 
  end

  def backup(backup_directory)
    @files.each do |file|
      backup_file(file, backup_directory)
    end
  end

  def backup_file(path, backup_directory)
    copy_path = File.join(backup_directory, path)
    FileUtils.mkdir_p(File.dirname(copy_path))
    FileUtils.cp(path, copy_path)
  end
end
