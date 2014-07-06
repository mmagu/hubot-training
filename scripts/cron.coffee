cron = require('cron').CronJob
module.exports = (robot) ->
  new cron
    cronTime: "0 * 19 * * *"
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      console.log(robot)
      robot.send { message: { data: {room_id: "training"}}}, "朝会の時間です。"
