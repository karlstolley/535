class Conversion

  def read_csv(test_file="")

    class_file = Array.new

    begin
      file = File.new(test_file, "r")
    rescue
      if test_file == ""
        puts "No file was provided."
      else
        puts "No file named " + test_file + " was found."
      end
      puts "What file do you want to read?"
      test_file = gets.chomp
      retry
    end

    while (line = file.gets)
      class_file.push(line)
    end

    puts test_file + " file read."

    class_file

  end

  def parse_csv(class_file)

    course_list = Array.new
    courses = class_file.length
    i=0
    while i < courses do
      course_list.push(class_file[i].split(","))
      i+=1
    end

    puts "File parsed."

    course_list

  end

  def convert_csv(csv_data,html_filename)
    begin
      html_file = File.open(html_filename, "w")
    rescue
      puts "What do you want to call the HTML file?"
      html_filename = gets.chomp
      retry
    end
      html_file.puts "<table>"
      table_row = 0
      while table_row < csv_data.length do
        html_file.puts "  <tr>"
        table_cell = 0
        while table_cell < csv_data[table_row].length
          html_file.puts "    <td>" + (csv_data[table_row][table_cell]).chomp + "</td>"
          table_cell += 1
        end
        html_file.puts "  </tr>"
        table_row += 1
      end
      html_file.puts "</table>"

    puts html_filename + " created."

  end

end

csv_convert = Conversion.new

csv_raw_file = 'test.csv'
html_file = 'test.htm'
csv_file = csv_convert.read_csv()
course_list = csv_convert.parse_csv(csv_file)
csv_convert.convert_csv(course_list,html_file)

