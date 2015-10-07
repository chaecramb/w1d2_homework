load 'date_calc.rb'
load 'volume.rb'
load 'metric_imperial_conv.rb'

def get_numbers(position)
  puts "Enter the #{position} number:"
  get_float
end

def get_float
  gets.to_f
end

def get_integer
  gets.to_i
end

def error
    puts "I'm sorry Dave. I'm afraid I can't do that."
end

def answer(a)
  puts "The answer is: #{a}"
end


def decimals(first_number, second_number)
    first_number_places = 0
    while(first_number != first_number.to_i)
        first_number_places += 1
        first_number *= 10
    end
    second_number_places = 0
    while(second_number != second_number.to_i)
        second_number_places += 1
        second_number *= 10
    end
    [first_number_places, second_number_places].max
end

def add
  first_number = get_numbers("1st")
  second_number = get_numbers("2nd")
  places = decimals(first_number, second_number)
  answer((first_number + second_number).round(places))
  pause
end

def subtract
  first_number = get_numbers("1st")
  second_number = get_numbers("2nd")
  places = decimals(first_number, second_number)
  answer((first_number - second_number).round(places))
  pause
end

def multiply
  answer(get_numbers("1st") * get_numbers("2nd"))
  pause
end

def divide
  answer(get_numbers("1st") / get_numbers("2nd"))
  pause
end

def square_root
    puts "Enter number:"
    answer(Math.sqrt(gets.to_i))
    pause
end

def power
  print "Enter the base number: "
  base = get_float
  print "Enter the exponent: "
  exponent = get_float 
  puts "The answer is: #{base ** exponent}"
  pause
end

def pause
  puts "Press enter to continue"
  gets
end

def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "*** Calc-U-L8R ***"
  puts "Please choose whether to keep it simple, or push the boundaries"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end

def basic_calc
  # ask the user which operation they want to perform
  puts
  puts "Which operation do you want to perform"
  puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide"
  puts "Calculate: a(g)e, sleeps till (c)hristmas, (v)olumes or co(n)vert between metric and imperial"
  print "Please enter your choice: "
  operation = gets.chomp.downcase

  case operation
  when "a" then add
  when "s" then subtract
  when "m" then multiply
  when "d" then divide
  when "g" then age
  when "c" then sleeps_till_xmas
  when "v" then volume_converter
  when "n" then mi_converter
  else
    error
    basic_calc
  end
end

def advanced_calc
  # ask the user which operation they want to perform
  puts "Which advanced operation do you want to perform"
  print "(s)quare root, (p)ower: "
  operation = gets.chomp.downcase

  case operation
  when "s" then square_root
  when "p" then power
  else
    error
    advanced_calc
  end
end

# run the app...

response = menu

until response == 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  else
    error
    pause
  end

  response = menu
end
