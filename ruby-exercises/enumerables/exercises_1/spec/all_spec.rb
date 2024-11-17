RSpec.describe 'all test' do
  it 'test all zeroes' do
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = numbers.all?(&:zero?)
    expect(all_zeros).to eq(true)
  end

  it 'not all zeroes' do
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = numbers.all?(&:zero?)
    expect(all_zeros).to eq(false)
  end

  it 'all gone' do
    words = %w[gone gone gone gone gone gone gone]
    all_gone = words.all? { |word| word == 'gone' }
    expect(all_gone).to eq(true)
  end

  it 'not all gone' do
    words = %w[gone gone gone gone gone there gone gone]
    all_gone = words.all? { |word| word == 'gone' }
    expect(all_gone).to eq(false)
  end

  it 'all empty' do
    strings = ['', '', '', '', '', '', '']
    all_empty = strings.all? { |test_string| test_string == '' }
    expect(all_empty).to eq(true)
  end

  it 'not all empty' do
    strings = ['', '', '', 'full', '', '', '']
    all_empty = strings.all? { |test_string| test_string == '' }
    expect(all_empty).to eq(false)
  end

  it 'not all uppercase' do
    words = %w[DOUGHNUT CASH MAIN bOWl SMACK SAND]
    all_uppercase = words.all? { |word| word.upcase == word }
    expect(all_uppercase).to eq(false)
  end

  it 'all lies' do
    lies = [false, false, false, false]
    all_lies = lies.all? { |lie| lie == false }
    expect(all_lies).to eq(true)
  end

  it 'multiples of 7' do
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    all_multiples_of_7 = numbers.all? { |number| (number % 7).zero? }
    expect(all_multiples_of_7).to eq(true)
  end

  it 'not all three digits long' do
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    all_3_digits = numbers.all? { |number| number.to_s.length == 3 }
    expect(all_3_digits).to eq(false)
  end

  it 'all four letter words' do
    words = %w[love hate fire bird call]
    all_4_letters = words.all? { |word| word.length == 4 }
    expect(all_4_letters).to eq(true)
  end
end
