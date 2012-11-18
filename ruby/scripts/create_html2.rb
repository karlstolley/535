# Version 2: Uses Hashes instead of Repetition

questions = {
  "What is the course number of your class?" => 'number',
  "What is the course title of your class?" => 'title',
  "Who teaches your class?" => 'instructor',
  "What day of the week does your class meet?" => 'day',
  "What time does class start?" => 'start_time',
  "What time does class end?" => 'end_time'
}

courses_data = {}

questions.each_pair { |question,answer| 
	print "\n#{question} "
	courses_data.merge!(answer => gets.chomp)
}

puts "<table>"
puts "  <tr>"
courses_data.each_value { |table_cell| puts "    <td>#{table_cell}</td>" }
puts "  </tr>"
puts "</table>"