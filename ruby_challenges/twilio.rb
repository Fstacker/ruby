require 'rubygems'
require 'twilio-ruby'

account_sid = "ACac9c99e61a2585058b3f46530a023d2f"
auth_token = "b6b74ad3bad80b6a088ae72f16bec417"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.api.account.messages.create(
	:from => "+14064139487",
	:to => "+14066908183",
	:body => "Oh hai, Brett"
	)

puts message.to 