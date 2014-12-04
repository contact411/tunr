# == Schema Information
#
# Table name: mixtapes
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Mixtape < ActiveRecord::Base

  belongs_to :user

  has_many :mixtape_songs
  has_many :songs, through: :mixtape_songs

end
