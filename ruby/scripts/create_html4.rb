# Version 4: Allows for Multiple Courses

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
      
      puts "\nFor Class #{table_list_row}\n"

			questions.each_pair { |question,answer| 
				print "\n#{question} #{table_list_row}? "
				@courses_data[table_row].merge!(answer => gets.chomp)
			}

      table_row += 1
			
    end

  end

  def build_html_file
    puts "<table>"
    @courses_data.each do |table_row|
			puts "  <tr>"
      table_row.each_value { |table_cell| puts "    <td>#{table_cell}</td>" }
      puts "  </tr>"
    end
    puts "</table>"
  end

end

create_new_HTML = CreateHTML.new
create_new_HTML.ask_questions
create_new_HTML.build_html_file
