require 'date'

def get_birthday
  puts "Please enter your date of birth in this format: YYYY-MM-DD"
  gets.chomp
end

def convert_birthday(dob)
  dob = dob.split("-")
  @birth_day = dob[2].to_i
  @birth_month = dob[1].to_i
  @birth_year = dob[0].to_i
end

def today
  date = Date.today
  @this_day = date.day
  @this_month = date.mon
  @this_year = date.year
  date.yday
end

def calculate_age
  years = Date.today.year - @birth_day
end

def birthday_passed?
  if (@this_month > @birth_month) && (@this_day >= @birth_day)
    true
  elsif (@this_month = @birth_month) && (@this_day >= @birth_day)
    true
  else
    false
  end
end

def age
  today
  convert_birthday(get_birthday)
  if birthday_passed?
    years_old =  @this_year - @birth_year
  else
    years_old =  @this_year - @birth_year - 1
  end
  puts "You are #{years_old}"
  pause
end

def xmas
  Date.new(2015, 12, 25).yday
end



def sleeps_till_xmas
  today
  sleeps = xmas - today
  if xmas > today
    sleeps
  else
    sleeps + 365
  end
  puts "There are #{sleeps} sleeps till Christmas!!!"
  pause
end









