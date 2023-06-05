class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def leave_review(user, star_rating, comment)
      reviews.create(user: user, star_rating: star_rating, comment: comment)
  end

end