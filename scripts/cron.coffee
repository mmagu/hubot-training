cron = require('cron').CronJob
module.exports = (robot) ->
  new cron
    cronTime: "0 18 30 * * *"
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      robot.send { message: data: {room_id: "training"}} , "朝会の時間です。"
