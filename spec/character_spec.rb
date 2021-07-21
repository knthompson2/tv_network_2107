require './lib/character'

RSpec.describe Character do

  it 'exists' do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    expect(kitt).to be_a(Character)
  end

  it 'has a name' do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    expect(kitt.name).to eq("KITT")
  end

  it 'has an actor' do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    expect(kitt.actor).to eq("William Daniels")
  end

  it 'has a salary' do
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    expect(kitt.salary).to eq(1_000_000)
  end
end
