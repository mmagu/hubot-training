cron = require('cron').CronJob
module.exports = (robot) ->
  robot.enter ->
  new cron
    cronTime: "0 45 0 * * *"
    start: true
    onTick: ->
      robot.send {room: "training"}, "朝会の時間です。"
