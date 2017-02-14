require 'fcm'
class WelcomeController < ApplicationController
  def index
  	protect_from_forgery with: :exception
  	fcm = FCM.new("AIzaSyA5gF4_bnQFVCilP3IDjUKKoWlIvAVf6o8")

  	registration_ids= ["doikMFq2WfU:APA91bEcP3KXDX27DWJXh-e03wJUdSW-yudeqAoy9u1NbRbZklPm43rZrAQZsLUwBM6-Fp3_-0428rpNyxCfea6mp5gd9Q3S4Py2AVhetRShoWBE3AD9kMOuxCcxQDQZx6QUptI3YUc-"] # an array of one or more client registration tokens
  	options = {data: {score: "123"}, collapse_key: "updated_score"}
  	fcm.send(registration_ids, options)
  end

end
