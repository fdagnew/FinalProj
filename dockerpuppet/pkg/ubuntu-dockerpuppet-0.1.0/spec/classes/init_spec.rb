require 'spec_helper'
describe 'dockerpuppet' do
  context 'with default values for all parameters' do
    it { should contain_class('dockerpuppet') }
  end
end
