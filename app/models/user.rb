class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :provider, :uid, :access_token

  def self.create_with_access_token(access_token)
    begin
      User.where(access_token: access_token).first.tap do |user|
        unless user
          graph = Koala::Facebook::API.new(access_token)
          me = graph.get_object("me")

          create(first_name: me["first_name"],
                 last_name: me["last_name"],
                 provider: "facebook",
                 uid: id,
                 email: me["email"],
                 access_token: access_token)
        end
      end
    rescue Koala::Facebook::AuthenticationError
      false
    end
  end
end
