# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint(8)        not null, primary key
#  long_url   :text             not null
#  short_url  :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ShortenedUrlTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
