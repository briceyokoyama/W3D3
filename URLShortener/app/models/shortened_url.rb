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

class ShortenedUrl < ApplicationRecord
  validates :long_url, :short_url, presence: true, uniqueness: true

  belongs_to :submitter,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  def self.random_code
    unique = false
    until unique == true
      s_url = SecureRandom.urlsafe_base64
      unique = true unless ShortenedUrl.exists?(short_url: s_url)
    end
    s_url
  end

  def self.generate_url(user, long_url)
    ShortenedUrl.create!(short_url: ShortenedUrl.random_code, long_url: long_url,user_id: user.id)
  end

end
