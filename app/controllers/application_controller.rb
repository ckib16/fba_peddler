class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # this code works
  # Where best to put it - model?
  client = MWS::Products::Client.new(
    marketplace_id:        ENV['marketplace_id'],
    merchant_id:           ENV['merchant_id'],
    aws_access_key_id:     ENV['aws_access_key_id'],
    aws_secret_access_key: ENV['aws_secret_access_key']
  )

end
