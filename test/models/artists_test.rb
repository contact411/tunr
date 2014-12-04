# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  hometown   :string(255)
#  bio        :string(255)
#  label      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class ArtistsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
