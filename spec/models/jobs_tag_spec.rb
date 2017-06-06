require 'rails_helper'

RSpec.describe JobsTag, type: :model do
  describe 'relationships' do
    it { should belong_to(:tag) }
    it { should belong_to(:job) }
  end
end
