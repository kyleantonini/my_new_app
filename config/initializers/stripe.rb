if Rails.env.production?
  Rails.configuration.stripe = {
  	:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
  	:secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
  	:publishable_key => 'pk_test_3gLvl7Wx8lZVYvqtmsw9KQWp',
  	:secret_key => 'sk_test_oIcbhm3ddNugrXDwWc6JtQ7x'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]