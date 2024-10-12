require 'tty-prompt'
require_relative 'fetcher'
require_relative 'reader'
require_relative 'display'

directory = 'data'  
fetcher = Fetcher.new(directory)
csv_files = fetcher.fetch_csv_files

prompt = TTY::Prompt.new
file_path = prompt.select("Choose one of these CSV files?", csv_files << 'quit')

if file_path != 'quit'
  reader = Reader.new(file_path)
  data = reader.read_data
  display = Display.new(data)
  display.show 

else
  puts "No file selected. Exiting..."
end
