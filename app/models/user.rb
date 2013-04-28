class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :provider, :uid, :access_token, :profile_picture, :phone_number

  has_many :user_item_statuses

  def self.create_with_access_token(access_token)
    begin
      User.where(access_token: access_token).first.tap do |user|
        unless user
          graph = Koala::Facebook::API.new(access_token)
          me = graph.get_object("me")

          create(first_name: me["first_name"],
                 last_name: me["last_name"],
                 provider: "facebook",
                 uid: me["id"],
                 email: me["email"],
                 profile_picture: graph.get_picture(me["id"]),
                 access_token: access_token)
        end
      end
    rescue Koala::Facebook::AuthenticationError
      false
    end
  end
end
