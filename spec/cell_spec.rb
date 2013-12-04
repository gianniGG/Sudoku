require 'cell'

describe Cell do
	let (:cell) {Cell.new}

	it 'should be empty by default' do
		expect(cell).to be_empty
		#define value for cell
	end

	it 'should be able to have a value' do
    cell.value = 5
		expect(cell.value).to eq(5)
		#create a value equal to a number to make sure it works
	end

	it 'should not be empty if it has a value' do
		cell.value = 4
		expect(cell).not_to be_empty
		#verify the rule
	end

	it 'should solve itself if there is only 1 solution' do
	neighbours = [1,2,3,4,6,7,8,9]
  cell.solve(neighbours)
  expect(cell.value).to eq(5)
	end

	it 'should solve itself if there is more than 1 solution' do
		neighbours = [1,2,3,4]
		cell.solve(neighbours)
		expect(cell).to be_empty
	end

context 'should know its possible values' do 

  it 'given all neighbours but one' do
  	expect(cell).to be_empty
  	neighbours = [1,2,3,4,6,7,8,9]
  	expect(cell.possible_values(neighbours)).to eq([5])
	end

		it 'given all neighbours but two' do
			expect(cell).to be_empty
			neighbours = [2,3,4,6,8,9]
			expect(cell.possible_values(neighbours)).to eq([1,5,7])
	end
end
end