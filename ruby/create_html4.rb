# Version 5: Writes to a Separate HTML File

class CreateHTML

  def ask_questions

		questions = {
			"What is the course number of your class" => 'number',
			"What is the course title of your class" => 'title',
			"Who teaches class" => 'instructor',
			"What is day of the week does class meet" => 'day',
			"What time does class start" => 'start_time',
			"What time does class end" => 'end_time'
		}

    print "\nHow many classes do you have this semester? "
    @course_count = gets.chomp
    
		@courses_data = []
    
    @courses = (@course_count.to_i)-1
    
    0.upto(@courses) do |table_row|

			@courses_data[table_row] = {}
			
      table_list_row = (table_row + 1).to_s
      
			questions.each_pair { |question,key| 
				print "\n#{question} #{table_list_row}? "
				@courses_data[table_row].merge!(key => gets.chomp)
			}

      table_row += 1
			
    end

  end


  def build_html_file
  
  	html_filename = ""
  
    begin
      html_file = File.open(html_filename, "w")
    rescue
      print "\n\nWhat do you want to call your Class listing file? "
      html_filename = gets.chomp + ".html"
      retry
    end
    
    html_file.puts "<table>"

    @courses_data.each do |table_row|

			html_file.puts "  <tr>"
      
      table_row.each_value { |table_cell| html_file.puts "    <td>" + table_cell + "</td>" }
      
      html_file.puts "  </tr>"

    end

    html_file.puts "</table>"

    puts "\n" + html_filename + " created."

  end

end

create_new_HTML = CreateHTML.new
create_new_HTML.ask_questions
create_new_HTML.build_html_file