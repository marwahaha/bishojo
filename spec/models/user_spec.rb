require 'rails_helper'

RSpec.describe User, :type => :model do
    it { is_expected.to validate_presence_of :name }
    
    # user = FactoryGirl.build :user
end
