puts "Welcome to my calculator!"

while true
	answer = ''
	until (answer == 'y') || (answer == 'n')
		print "Do you want to continue? (y or n): "
		answer = gets.chomp
		if (answer != 'y') && (answer != 'n')
			puts "That wasn't a valid input."
		end
	end

	if answer == 'n'
		break
	end

	print "Input your first number: "
	first_num = gets.chomp.to_i
	#gets takes input and adds \n at the end; chomp removes \n
	#gets only takes in strings; to_i will specify that it will be an integer

	print "Input the operator (+, -, *, /): "
	oper = gets.chomp

	print "Input your second number: "
	second_num = gets.chomp.to_i

	puts "You inputted #{first_num}, #{oper}, and #{second_num}."


	if oper == '+'
		puts first_num + second_num

	elsif oper == '-'
		puts first_num - second_num

	elsif oper == '*'
		puts first_num * second_num

	elsif oper == '/'
		puts first_num / second_num

	else
		puts "You didn't input a valid operation!"
	end
end