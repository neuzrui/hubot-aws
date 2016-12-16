# Description:
#   Stop ec2 instance
#
# Commands:
#   hubot ec2 stop --instance_id=[instance_id] - Stop the Instance
#
# Notes:
#   --instance_id=***   : [required] One instance ID.
#   --dry-run           : [optional] Checks whether the api request is right. Recommend to set before applying to real asset.

module.exports = (robot) ->
  robot.respond /ec2 echo(.*)$/i, (msg) ->
    msg.send "You've been hacked! ;)"
    return
