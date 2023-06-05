class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews
  
    def favorite_product
      products.joins(:reviews).where(reviews: {user_id: id}).order('reviews.star_rating DESC').first
    end
  
    def remove_reviews(product)
      reviews.where(product: product).destroy_all
    end
end