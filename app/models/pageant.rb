class Pageant < ActiveRecord::Base
  belongs_to :user
  has_many :candidates

  validates :name, presence: true
  validates :client, presence: true
  validates :location, presence: true

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
