Rails.configuration.stripe = {
  :publishable_key => "pk_test_IwRX9eX9vbk7dpmg2BYhQVaI",
  :secret_key      => "sk_test_Squ5xCfPt8dCSjNBowL8IQS0"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]