command: "uptime"

# the refresh frequency in milliseconds
refreshFrequency: 6000000

render: (output) -> """
  <h1>#{output}</h1>
"""


style: """
  color: #22AA22
  opacity: 0.7
  font-family: Helvetica Neue
  right: 70%
  top: 97%
  text-align: left
  background rgba(#000, .6)
  padding 5px 20px 5px 10px
  border-radius 5px

  h1
    font-size: 2.5em
    font-weight: 100
    margin: 0
    padding: 0
  """


update: (output, domEl) ->
  data = output.split(/\ up\ +/)  
  #period = data[3].split(/,+/)
  datetime = data[1].split(/,+/)[0]
  end = ""
  
  if /\:/.test datetime
    hours = datetime.split(/\:+/)[0]
    mins = datetime.split(/\:+/)[1]
    $(domEl).find("h1").text "up since: " + hours + " h"
  else
    $(domEl).find("h1").text "up since: " + datetime
    
#  $(domEl).find("h1").text data[1] + " " + data[2] + " " + period[0]
# $(domEl).find("h1").text output


### @TODO: use this, calculate the diff in days
$ last reboot
reboot ~ Tue Sep 22 12:52
reboot ~ Sun Aug 30 23:17
###