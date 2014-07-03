cron = require('cron').CronJob
module.exports = (robot) ->
  robot.enter ->
  new cron
    cronTime: "0 37 0 * * *"
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      robot.send {room: "training"}, "朝会の時間です。"
