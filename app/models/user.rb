class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :provider, :uid, :access_token
  devise :omniauthable, omniauth_providers: [:facebook]

  def self.find_for_facebook_oauth(auth)
    uid = auth["uid"]
    provider = auth["provider"]
    user = User.where(:provider => provider, :uid => uid).first

    unless user
      user = User.create!(first_name: auth[:extra][:raw_info][:first_name],
                          last_name: auth[:extra][:raw_info][:last_name],  
                          provider: provider,
                          uid: uid,
                          email: auth[:info][:email],
                          access_token: auth[:credentials][:token])
    end
    user
  end
end
