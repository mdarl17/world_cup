require 'rspec'
require './lib/mermaid'

RSpec.describe Mermaid do
    it 'is an instance of mermaid' do
        mermaid = Mermaid.new('Sereia')
        expect(mermaid).to be_a Mermaid
    end

    it 'has a name' do
        mermaid = Mermaid.new('Sereia')
        expect(mermaid.name).to eq 'Sereia'
    end

    it 'has an age' do
        mermaid = Mermaid.new('Sereia')
        expect(mermaid.age).to eq 22
    end

    it 'has can get older' do
        mermaid = Mermaid.new('Sereia')
        mermaid.get_older
        expect(mermaid.age).to eq 23
    end
end