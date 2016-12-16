# Description:
#   Stop ec2 instance
#
# Commands:
#   hubot ec2 stop --instance_id=[instance_id] - Stop the Instance
#
# Notes:
#   --instance_id=***   : [required] One instance ID.
#   --dry-run           : [optional] Checks whether the api request is right. Recommend to set before applying to real asset.

getArgParams = (arg) ->

  message_capture = /--message=(.*?)( |$)/.exec(arg)
  message = if message_capture then message_capture[1] else null

  return {message: message}


module.exports = (robot) ->
  robot.respond /ec2 echo(.*)$/i, (msg) ->
    message = getArgParams(msg.match[1])
    msg.send "#{message} \n You've been hacked! ;)"
    return
