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
    @array.each do |person|
      puts "#{person.name}: #{person.day}"
    end
  end
end