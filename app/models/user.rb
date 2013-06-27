class User < ActiveRecord::Base
  attr_accessible :age, :bio, :favorite_color, :name
end
