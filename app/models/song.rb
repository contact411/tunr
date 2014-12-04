# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  year       :integer
#  genre      :string(255)
#  duration   :string(255)
#  artist_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Song < ActiveRecord::Base
  
  belongs_to :artist

  has_many :mixtape_songs
  has_many :mixtapes, through: :mixtape_songs

end
