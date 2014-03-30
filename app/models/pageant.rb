class Pageant < ActiveRecord::Base
  include AASM

  belongs_to :user
  has_many :candidates

  validates :name, presence: true
  validates :client, presence: true
  validates :location, presence: true
  validates :status, presence: true

  aasm :column => 'status' do
    state :inactive, initial: true
    state :active
    state :finished
  end

  def current_state
    self.aasm.current_state
  end

end

class NullPageant < RuntimeError
  def location
  end

  def client
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
