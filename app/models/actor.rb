class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    char = self.characters
    if char.length == 1
      name = char[0].name
    elsif char.length > 1
      binding.pry
      char.each do  |a|
        "#{a[name]} - "
      end
    end
  end
end
