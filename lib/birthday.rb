require 'date'

class Birthday
  attr_reader :name, :day

  def initialize(name, birthday)
    @name = name
    @day = birthday
  end
end