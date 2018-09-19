class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    char = self.characters
    binding.pry
    if char.length > 1
      binding.pry
      char.each do  |a|
        "#{a[name]} - "
        binding.pry
      end
    else
      binding.pry
      name = char.name
    end
  end
end

if char.length > 1
  "Greater than 1"
else
  "Equal to or less than 1"
end
