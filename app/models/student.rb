require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
  validates :email, :format => { :with => /\w+@\w+\.\w{2,}/, :message => "Invalid email"}, :uniqueness => true
  validates :age, :numericality => { :greater_than => 4}
  validates :phone, :format => { :with => /\(\d{3}\) \d{3}-\d{4} x\d{4}/, :message => "Invalid phone format"}

  
  def name
    "#{first_name} #{last_name}"
  end

  def age
    now = Date.today
    now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
  end
end
