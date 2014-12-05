# == Schema Information
#
# Table name: songs
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  year          :integer
#  genre         :string(255)
#  duration      :string(255)
#  artist_id     :integer
#  created_at    :datetime
#  updated_at    :datetime
#  url           :string(255)
#  soundcloud_id :integer
#

class Song < ActiveRecord::Base
  before_save :soundcloud_me

  belongs_to :artist

  has_many :mixtape_songs
  has_many :mixtapes, through: :mixtape_songs

  def soundcloud_me
    client = SoundCloud.new(client_id: "d699e52c9e94116d54c544ff03993cc2")
    track = client.get('/resolve', url: self.url )
    self.soundcloud_id = track.id
  end

end
