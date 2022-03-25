require_relative '../lib/birthday'

class BirthdayList
  attr_reader :array

  def initialize
    @array = []
  end

  def store(person)
    @array.push(person)
  end
end