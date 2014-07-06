cron = require('cron').CronJob
module.exports = (robot) ->
  new cron
    cronTime: "0 * 19 * * *"
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      console.log(prosess.env)
      robot.send { message: { data: {room_id: process.env.ROOM_ID}}}, "朝会の時間です。"
