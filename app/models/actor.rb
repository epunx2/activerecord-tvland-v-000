class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    chars = self.characters
    if chars.length == 1
      char = chars[0]
      "#{char.name} - #{char.show.name}"
      binding.pry
    elsif chars.length > 1
      binding.pry
      chars.each do  |a|
        "#{a[name]} - "
      end
    end
  end
end
