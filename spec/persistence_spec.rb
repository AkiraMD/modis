require 'spec_helper'

module PersistenceSpec
  class MockModel
    include Modis::Model
  end
end

describe Modis::Persistence do
  let(:model) { PersistenceSpec::MockModel.new }

  it 'returns a key namesapce' do
    PersistenceSpec::MockModel.key_namespace.should == 'modis:persistence_spec:mock_model'
    model.key_namespace.should == 'modis:persistence_spec:mock_model'
  end

  it 'returns a key' do
    model.save!
    model.key.should eq 'modis:persistence_spec:mock_model:1'
  end

  it 'returns a nil key if not saved' do
    model.key.should be_nil
  end

  # describe 'create' do
  # end

  # describe 'create' do
  # end
end
