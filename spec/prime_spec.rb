require_relative '../lib/prime.rb'

RSpec.describe Prime do
  describe '#is_prime?' do
    context 'with input value 1' do
      it 'returns true' do
        expect(Prime.is_prime?(1)).to eq(false)
      end
    end

    context 'with input value 2' do
      it 'returns true' do
        expect(Prime.is_prime?(2)).to eq(true)
      end
    end

    context 'with input value 3' do
      it 'returns true' do
        expect(Prime.is_prime?(3)).to eq(true)
      end
    end

    context 'with input value 10' do
      it 'returns true' do
        expect(Prime.is_prime?(10)).to eq(false)
      end
    end

    context 'with input value 49' do
      it 'returns true' do
        expect(Prime.is_prime?(49)).to eq(false)
      end
    end
  end

  describe '#all_primes' do
    context 'with input value 5' do
      before do
        @all_primes = Prime.all_primes(10)
      end
      it 'returns first 5 primes starting from 1' do
        expect(@all_primes).to eq([2, 3, 5, 7])
      end
      it 'returns array of integers with count 4' do
        expect(@all_primes.count).to eq(4)
      end
    end

    context 'with input value 15' do
      before do
        @all_primes = Prime.all_primes(15)
      end
      it 'returns first 15 primes starting from 1' do
        expect(@all_primes).to eq([2, 3, 5, 7, 11, 13])
      end
      it 'returns array of integers with count 6' do
        expect(@all_primes.count).to eq(6)
      end
    end
  end
end