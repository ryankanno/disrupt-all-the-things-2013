class User < ActiveRecord::Base
  attr_accessible :provider, :uid
end
