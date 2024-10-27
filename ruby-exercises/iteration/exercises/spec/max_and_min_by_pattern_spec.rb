RSpec.describe 'max and min by pattern' do
  it 'test 1'  do
    numbers = [1, 100, 1000, 1_000_000]
    greatest = numbers[0]
    numbers.each do |number|
      greatest = number if number > greatest
    end
    expect(greatest).to eq(1_000_000)
  end

  it 'test 2' do
    magnitudes = {
      ones: 1,
      hundreds: 100,
      thousands: 1000,
      millions: 1_000_000
    }
    greatest = magnitudes[magnitudes.keys[0]]
    magnitudes.each_value do |value|
      greatest = value if value > greatest
    end
    expect(greatest).to eq(1_000_000)
  end

  it 'test 3' do
    meals = %w[banana nuts salad steak cake]
    shortest_word = meals[0]
    meals.each do |meal|
      shortest_word = meal if shortest_word.length > meal.length
    end

    expect(shortest_word).to eq('nuts')
  end

  it 'test 4' do
    meals = {
      breakfast: 'banana',
      snack: 'nuts',
      lunch: 'salad',
      dinner: 'steak',
      dessert: 'cake'
    }
    shortest_word = meals[meals.keys.first]
    meals.each_value do |dish|
      shortest_word = dish if shortest_word.length > dish.length
    end

    expect(shortest_word).to eq('nuts')
  end

  it 'test 5' do
    stats = [3001, 431, 1695, 0.27601, 0.340]
    most_digits = stats[0]
    stats.each do |digit|
      most_digits = digit if most_digits.to_s.length < digit.to_s.length
    end

    expect(most_digits).to eq(0.27601)
  end

  it 'test 6' do
    stats = {
      games_played: 3001,
      home_runs: 431,
      rbi: 1695,
      batting_average: 0.27601,
      on_base_percentage: 0.340
    }
    most_digits = stats[stats.keys.first]
    stats.each_value do |digit|
      most_digits = digit if most_digits.to_s.length < digit.to_s.length
    end

    expect(most_digits).to eq(0.27601)
  end

  it 'test 7' do
    ages = [39, 45, 29, 24, 50]
    oldest = ages[0]
    ages.each do |age|
      oldest = age if oldest < age
    end

    expect(oldest).to eq(50)
  end

  it 'test 8' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    oldest = { name: ages.keys[0], age: ages.values[0]}
    ages.each do |name, age|
      if oldest[:age] < age
        oldest = { name: name.to_s, age: age }
      end
    end

    expected = {name: "miguel", age: 50}
    expect(oldest).to eq(expected)
  end

  it 'test 9' do
    programmers = [['katrina', 'sandi', 'jim', 'aaron', 'desi'], ['abby', 'jon', 'susan']]
    fewest_programmers = programmers[0]
    programmers.each do |list|
      fewest_programmers = list if fewest_programmers.length > list.length
    end

    expect(fewest_programmers).to eq(["abby", "jon", "susan"])
  end

  it 'test 10' do
    programmers = { ruby: ['katrina', 'sandi', 'jim', 'aaron', 'desi'], java: ['abby', 'jon', 'susan'] }
    fewest_programmers = programmers.min_by { |_, names| names.size }.first

    expect(fewest_programmers).to eq(:java)
  end
end
