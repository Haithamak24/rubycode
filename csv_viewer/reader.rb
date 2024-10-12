require 'csv'

class Reader
  def initialize(file_path)
    @file_path = file_path
  end

  def read_data
    CSV.read(@file_path, headers: true)
  end
end
