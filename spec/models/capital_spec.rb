require 'rails_helper'

RSpec.describe Capital, type: :model do

  it 'should have a type' do
    expect(subject).to respond_to :type
  end

  it 'should inherit attributes from citites' do
    expect(subject).to respond_to :name
    expect(subject).to respond_to :population
    expect(subject).to respond_to :altitude
  end

  it 'should have the custom attributes' do
    expect(subject).to respond_to :state
  end

  it 'should inherit validations' do
    expect(subject).to validate_presence_of(:name)
    expect(subject).to validate_presence_of(:population)
  end

  it 'should create capital through base class' do
    expect {
      City.create name: 'test', population: 1, type: 'Capital', state: 'CH'
    }.to change(Capital, :count).by 1
  end

  it 'should cast to captal if retrieved through base class' do
    Capital.create name: 'test', population: 1, type: 'Capital', state: 'CH'
    expect(City.last).to be_a Capital
  end

end