class Model < ApplicationRecord

  def self.genders
    ['Female', 'Male', 'Other']
  end 

  validates_presence_of :name, :age, :hair_color, :eye_color, :gender, :alive
  validates_inclusion_of :gender, in: genders
  validates_inclusion_of :age, in: (18..100).to_a, message: "Needs to be Between 18 and 100."

  def info
    "#{name} is #{age} years old #{gender} with #{eye_color} eyes and #{hair_color} hair who is alive: #{alive_display}."
  end

  def alive_display
    alive ? 'yes' : 'no'
  end
  
  def names 
    "#{name}"
  end 

end
