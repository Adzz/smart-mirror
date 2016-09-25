require 'models/weather'
require 'spec_helper'
require 'pry'

RSpec.describe Weather do
  describe 'forecast' do
    it 'gets the forecast for london' do
      expect(subject.forecast["name"]).to eq "London"
    end
  end
end