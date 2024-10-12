require 'terminal-table'

class Display
  def initialize(data)
    @data = data
  end

  def show
    headers = @data.headers
    rows = @data.map { |row| row.fields }
    
    table = Terminal::Table.new(headings: headers, rows: rows)
    puts table
  end
end
