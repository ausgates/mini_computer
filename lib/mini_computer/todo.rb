require 'colorize'

#methods
#To-do list application. Not finished yet.
def todo
	input = STDIN
	 while input != "quit"
		clear
		vr
		puts "\t\tYOUR TO-DO LIST\n"
		vr
		puts "\nWhat would you like to do? (for commands, type 'help')".green
		input = gets.chomp.downcase
		case input
			when "add"
				todo_new_item
			when "no"
				puts "Okay. You can view your list below. ".green
			when "help"
				help_td
			when "back"
				clear
				getInput
			when "quit"
				quit
			else 
				puts "Sorry, that is an invalid input. Please try again...\nPress return".red
		end
		pause
	end
end

def todo_new_item
	clear
	puts "What is the item you need to complete?".green
	title = gets.downcase
	puts "What is the date you need to complete it by?".green
	date = gets.downcase
	time = Time.now
	item = Todo.new(title, date, time)
	puts "New item created:\t\t #{item.title}"
	puts "Completion date:\t\t #{item.date}"
	puts "Entered on:\t\t #{item.time}"
end

def help_td
	clear 
	puts "Here is a list of commands for the Todo Application:
add		adds an item to your list
back		returns to the main menu
quit		exits your computer
	"
end
#classes

class Todo

attr :item, :title, :date, :time

	def initialize(title, date, time)
		@title = title
		@date = date
		@time = Time.now
	end
end