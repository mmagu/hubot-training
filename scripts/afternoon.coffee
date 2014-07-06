cron = require('cron').CronJob
module.exports = (robot) ->
  new cron
    cronTime: "0 0 13 * * 1-5"
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      robot.send { message: { data: {room_id: process.env.ROOM_ID}}}, "午後も頑張りましょう！"
