class PersonalTrainer < ActiveRecord::Base
    has_many :routines
    has_many :exercises, through: :routines



    
end
