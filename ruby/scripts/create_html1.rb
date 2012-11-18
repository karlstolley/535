#Version 1: Simple Script to HTML

print "What is the course number of your class? "
number = gets.chomp

print "What is the course title of your class? "
title = gets.chomp

print "Who teaches this class? "
instructor = gets.chomp

print "What day of the week does your class meet? "
day = gets.chomp

print "What time does class start? "
start_time = gets.chomp

print "What time does class end? "
end_time = gets.chomp

puts "<table>"
puts "  <tr>"
puts "    <td>" + number + "</td>"
puts "    <td>" + title + "</td>"
puts "    <td>" + instructor + "</td>"
puts "    <td>" + day + "</td>"
puts "    <td>" + start_time + "</td>"
puts "    <td>" + end_time + "</td>"
puts "  </tr>"
puts "</table>"