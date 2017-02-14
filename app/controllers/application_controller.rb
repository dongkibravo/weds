class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  fcm = FCM.new("AAAAdCXE8-U:APA91bFwwMBs5Gp97Itn17Dgl0XWz0YV9iutf0Cf26MZLbnFGxe_LhwAT3CERoohA444pTGnRH2Y0Pxsmf2wXC7kpPWKe019A_RT6n0gS-iwK5ZTZwIENm3gyCIUhpEv6wgH2oM0zkb8
")

  registration_ids= ["doikMFq2WfU:APA91bEcP3KXDX27DWJXh-e03wJUdSW-yudeqAoy9u1NbRbZklPm43rZrAQZsLUwBM6-Fp3_-0428rpNyxCfea6mp5gd9Q3S4Py2AVhetRShoWBE3AD9kMOuxCcxQDQZx6QUptI3YUc-"] # an array of one or more client registration tokens
  options = {data: {score: "123"}, collapse_key: "updated_score"}
  fcm.send(registration_ids, options)


end
