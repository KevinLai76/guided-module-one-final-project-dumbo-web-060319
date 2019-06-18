class User < ActiveRecord::Base
   has_many :journey
   has_many :crew
   has_many :outcome, through: :journey

   def crew_num
     num_of_crew = 7
   end
end
