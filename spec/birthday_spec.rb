require_relative '../lib/birthday'

describe Birthday do
  let(:person1) {Birthday.new("Wayne Rooney", Date.new(1985,10,24))}

  it 'has an instance variable that stores the persons name' do
    expect(person1.name).to eq "Wayne Rooney"
  end

  it 'has an instance variable that stores the persons birthday' do
    expect(person1.day.to_s). to eq "1985-10-24"
  end
end