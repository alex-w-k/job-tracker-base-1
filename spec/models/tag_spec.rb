require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe 'relationships' do
    it { should have_many(:jobs).through(:jobs_tags) }
  end
end
