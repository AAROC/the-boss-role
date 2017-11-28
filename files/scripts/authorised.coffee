module.exports = (robot) ->
  # Command listener
  robot.respond /ansible me/i, (msg) ->
    role = 'deployment'
    user = robot.brain.userForName(msg.message.user.name)
    return msg.reply "#{name} does not exist" unless user?
    unless robot.auth.hasRole(user, role)
      msg.reply "Access Denied. You need role #{role} to perform this action."
      return
    # Some commandy stuff
    msg.reply 'Command done!'