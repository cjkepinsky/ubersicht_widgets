# command: "defaults read /Library/Preferences/com.apple.TimeMachine ReferenceLocalSnapshotDate |cut -d, -f1"
command: "tmutil listlocalsnapshots /"

refreshFrequency: 60000

render: (output) -> """
  <h1>#{output}</h1>
"""


style: """
  color: #22AA22
  opacity: 0.7
  font-family: Helvetica Neue
  right: 0%
  top: 97%
  text-align: right
  background rgba(#000, .7)
  padding 5px 20px 70px 20px
  border-radius 5px

  h1
    font-size: 2.5em
    font-weight: 100
    margin: 0
    padding: 0
  """

update: (output, domEl) ->
  DAY = 1000 * 60 * 60  * 24
  out = output.split(/\.+/)[3].split(/\-+/)
  res = out[0] + "-" + out[1] + "-" + out[2]

  regex = /(\d{4})-(\d{2})-(\d{2})/
  m = regex.exec(res)
  lastBackupDate = new Date(new Date(m[1], m[2], m[3]))
  todayDate = new Date
  days = Math.round((todayDate.getTime() - lastBackupDate.getTime()) / DAY)

  $(domEl).find('h1').html("last backup: " + Math.abs(days) + " days ago")

