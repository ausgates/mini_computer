require_relative "mini_computer/version.rb"
require_relative "mini_computer/methods.rb"
require_relative "mini_computer/tips.rb"
module MiniComputer
	input = STDIN.gets.chomp.downcase
	while input != "quit"
		getInput
	end
end
