require_relative '../lib/birthday_list'

describe BirthdayList do
  let(:list) {BirthdayList.new}
  let(:person1) {Birthday.new("Wayne Rooney", "1985-10-24")}

  it 'has an array to store birthdays in' do
    expect(list.array).to eq []
  end

  it 'can store a birthday in its array' do
    list.store(person1)
    expect(list.array[0]).to eq person1
  end
end