class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews
  
    def favorite_product
      products.joins(:reviews).where(reviews: {user_id: id}).order('reviews.star_rating DESC').first
    end
  
end