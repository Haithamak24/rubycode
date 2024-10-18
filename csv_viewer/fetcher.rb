class Fetcher
  def initialize(directory)
    @directory = directory
  end

  def fetch_csv_files
    files = Dir.glob(File.join(@directory, '*.csv'))
    if files.empty?
      puts "No CSV files found in the directory."
      exit
    end
    files
  end
end
