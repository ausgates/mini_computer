require_relative "mini_computer/version.rb"
require_relative "mini_computer/methods.rb"
require_relative "mini_computer/tips.rb"
module MiniComputer
	input = STDIN
	while input != "quit"
		getInput
	end
end
