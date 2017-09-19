class Identity < ApplicationRecord
  belongs_to :user
  validates_presence_of :user_id, :uid, :provider
  validates_uniqueness_of :uid, scope: :provider

  def self.find_or_intialize_with_omniauth(auth)
    find_or_initialize_by(uid: auth['uid'], provider: auth['provider'])
  end
end
