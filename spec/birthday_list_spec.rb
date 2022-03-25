require_relative '../lib/birthday_list'

describe BirthdayList do
  it 'has an array to store birthdays in' do
    expect(BirthdayList.new.array).to eq []
  end
end