cron = require('cron').CronJob
module.exports = (robot) ->
  new cron
    cronTime: "0 0 9 * * 1-5"
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      robot.send { message: { data: {room_id: process.env.ROOM_ID}}}, "始業の時刻になりました。今日も一日頑張りましょう！"
