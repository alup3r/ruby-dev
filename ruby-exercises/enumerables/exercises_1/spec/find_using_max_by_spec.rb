RSpec.describe 'max_by' do
  # You get the first test for free... it's already passing.
  it 'longest word' do
    words = %w[apple banana cherry date eggplant]
    found_word = words.max_by(&:length)
    expect(found_word).to eq('eggplant')
  end

  # This one is missing the block inside the loop.
  it 'shortest word' do
    words = %w[apple banana cherry date eggplant]
    found_word = words.min_by(&:length)
    expect(found_word).to eq('date')
  end

  # This one is missing the entire loop
  it 'array with the most items' do
    arrays = [%i[a b c], [1, 2, 3, 4, 5], ['zoo', :things, :stuff]]
    biggest_array = arrays.max_by(&:length)
    expect(biggest_array).to eq([1, 2, 3, 4, 5])
  end

  # You're on your own on this one.
  it 'array with fewest items' do
    arrays = [%i[a b c], [1, 2, 3, 4, 5], ['zoo', :things, :stuff]]
    smallest_array = arrays.min_by(&:length)
    expect(smallest_array).to eq(%i[a b c])
  end

  it 'biggest number' do
    numbers = [1, 10, 100, 1000, 10_000, 1_000_000]
    found = numbers.max_by { |number| number }
    expect(found).to eq(1_000_000)
  end

  it 'smallest number' do
    numbers = [1, 10, 100, 1000, 10_000, 1_000_000]
    found = numbers.min_by { |number| number }
    expect(found).to eq(1)
  end

  it 'most programmers' do
    programmers = { ruby: %w[katrina sandi jim aaron desi], java: %w[abby jon susan] }
    most_programmers = programmers.max_by { |_, v| v.length }
    expect(most_programmers.first).to eq(:ruby)
  end

  it 'fewest programmers' do
    programmers = { ruby: %w[katrina sandi jim aaron desi], java: %w[abby jon susan] }
    fewest_programmers = programmers.min_by { |_, v| v.length }
    expect(fewest_programmers.first).to eq(:java)
  end
end
