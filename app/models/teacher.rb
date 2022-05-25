class Teacher < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

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
