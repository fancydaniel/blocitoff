class IncomingController < ApplicationController

  #http://stackoverflow.com/questions/1177863/how-do-i-ignore-the-authenticity-token-for-specific-actions-in-rails
  skip_before_action :verify_authenticity_token, only[:create]

  def create


    puts "INCOMING PARAMS HERE: #{params}"

    # Yout put the message-splitting and business
    # magic here.

    # Assuming all went well
    head 200

  end  

end
