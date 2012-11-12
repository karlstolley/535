# Version 3: Separates Questions and Display into Two Methods

class CreateHTML

  def ask_questions
		questions = {
			"What is the course number of your class?" => 'number',
			"What is the course title of your class?" => 'title',
			"Who teaches class?" => 'instructor',
			"What is day of the week does class meet?" => 'day',
			"What time does class start?" => 'start_time',
			"What time does class end?" => 'end_time'
		}
		@courses_data = {}
		questions.each_pair { |question,answer| print "\n#{question} "; @courses_data.merge!(answer => gets.chomp)}
  end

  def build_html_file
    puts "<table>"
			puts "  <tr>"
      @courses_data.each_value { |table_cell| puts "    <td>#{table_cell}</td>" }
      puts "  </tr>"
    puts "</table>"
  end

end

create_new_HTML = CreateHTML.new
create_new_HTML.ask_questions
create_new_HTML.build_html_file
