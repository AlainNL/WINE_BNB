class Teacher < ApplicationRecord
  belongs_to :user

  def first_name
    user.first_name
  end

  def last_name
    user.last_name
  end

  def city
    user.city
  end
end
