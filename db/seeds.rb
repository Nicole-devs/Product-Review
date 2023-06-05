
# Create some users
patricia = User.create(name: "Patricia", email: "patricia@example.com")
martin = User.create(name: "Martin", email: "martin@example.com")

# Create some products
puma = Product.create(name: "Puma", price: 9.99)
airforce = Product.create(name: "Airforce", price: 14.99)

# Create some reviews
Review.create(user: martin, product: airforce, star_rating: 4, comment: "Pretty good!")
Review.create(user: patricia, product: puma, star_rating: 3, comment: "It's okay.")
Review.create(user: martin, product: puma, star_rating: 2, comment: "Small colour range.")
Review.create(user: patricia, product: airforce, star_rating: 5, comment: "Super comfy!")
