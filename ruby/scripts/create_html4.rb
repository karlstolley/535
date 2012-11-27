# Version 4: Allows for Multiple Courses

class CreateHTML

  def ask_questions

		questions = {
      "What is the course number of class" => 'number',
      "What is the course title of class" => 'title',
      "Who teaches class" => 'instructor',
      "What day of the week do you attend class" => 'day',
      "When do you start class" => 'start_time',
      "What do you leave class" => 'end_time'
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
