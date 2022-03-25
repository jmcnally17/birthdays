require_relative '../lib/birthday_list'

describe BirthdayList do
  let(:list) {BirthdayList.new}
  let(:person1) {double :birthday}
  let(:person2) {double :birthday}
  let(:person3) {double :birthday}

  it 'has an array to store birthdays in' do
    expect(list.array).to eq []
  end

  it 'can store a birthday in its array' do
    list.store(person1)
    expect(list.array[0]).to eq person1
  end

  it 'can show a list of birthdays stored with each birthday on a line in a tidy format' do
    allow(person1).to receive(:name).and_return "Wayne Rooney"
    allow(person1).to receive(:day).and_return "1985-10-24"
    allow(person2).to receive(:name).and_return "Thierry Henry"
    allow(person2).to receive(:day).and_return "1977-08-17"
    list.store(person1)
    list.store(person2)
    expect{list.show_all}.to output("Wayne Rooney: 1985-10-24\nThierry Henry: 1977-08-17\n").to_stdout
  end

  it 'checks birthdays that are today and prints each matching birthday and the persons age' do
    current_year = Date.today.to_s[0..3].to_i
    birth_year = 1957
    age = current_year - birth_year
    allow(person3).to receive(:name).and_return "Bob"
    allow(person3).to receive(:day).and_return "#{birth_year.to_s}-#{Date.today.to_s[5..-1]}"
    list.store(person3)
    expect{list.check_today}.to output("It's Bob's birthday today! They are #{age} years old!\n").to_stdout
  end
end