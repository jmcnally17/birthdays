require_relative '../lib/birthday'

class BirthdayList
  attr_reader :array

  def initialize
    @array = []
  end

  def store(person)
    @array.push(person)
  end

  def show_all
    @array.each { |person| puts "#{person.name}: #{person.day}" }
  end

  def check_today
    current_date = Date.today.to_s[5..-1]
    current_year = Date.today.to_s[0..3].to_i

    count = 0
    @array.each do |person|
      birth_year = person.day[0..3].to_i
      age = current_year - birth_year
      if person.day[5..-1] == current_date
        puts "It's #{person.name}'s birthday today! They are #{age} years old!"
        count +=1
      end
    end
    puts "Nobody has a birthday today" if count == 0
  end
end