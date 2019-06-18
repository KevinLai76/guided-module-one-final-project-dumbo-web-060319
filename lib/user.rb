class User < ActiveRecord::Base
   has_many :journey
   has_many :crew 
   has_many :outcome, through: :journey
end