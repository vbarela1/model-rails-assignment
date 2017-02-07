class Model < ApplicationRecord

  def self.genders
    ['Female', 'Male', 'Other']
  end 

  validates_presence_of :name, :age, :hair_color, :eye_color, :gender, :alive
  validates_inclusion_of :gender, in: genders

  def info
    "#{name} is #{age} years old #{gender} with #{eye_color} eyes and #{hair_color} hair who is alive: #{alive}."
  end
  
  def names 
    "#{name}"
  end 

end
