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

require 'test_helper'

class SongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
