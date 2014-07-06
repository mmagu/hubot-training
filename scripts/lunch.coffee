cron = require('cron').CronJob
module.exports = (robot) ->
  new cron
    cronTime: "0 0 12 * * 1-5"
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      robot.send { message: { data: {room_id: process.env.ROOM_ID}}}, "お昼休みの時間になりました！"
