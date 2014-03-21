require 'spec_helper'

describe Pageant do
  it { should belong_to(:user) }
  it { should have_many(:candidates) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:client) }
  it { should validate_presence_of(:location) }

  it 'should set default values' do
    pageant = create(:pageant)
    pageant.status.should == 'inactive'
  end
end

# == Schema Information
#
# Table name: pageants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  client     :string(255)
#  location   :string(255)
#  status     :string(255)
#
