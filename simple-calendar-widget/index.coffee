#format = '%A<br>%d.%m.%y<br>%H:%M:%S'
#format = '%A :: %d.%m.%y :: %H:%M:%S'

command: "icalBuddy —u -n -sd -eep notes,attendees,location,url -nc -nnr '<br/>' —ss '<br/>' -b '<br>' eventsToday"
#command: "icalBuddy -sc -nnr '<br/>' —ss '<br/>' -b '<br>' tasksDueBefore:today"
#command: "icalBuddy -f -sc  -nc -nnr '<br/>' —ss '<br/>' -b '<br>' tasksDueBefore:today"
#command: "cal"
#icalBuddy -f -sc tasksDueBefore:today+7

# the refresh frequency in milliseconds
# 1 800 000 = = 30 min
refreshFrequency: 1800000

render: (output) -> """
  <h1>#{output}</h1>
"""

style: """
  color: #22AA22
  font-family: Helvetica Neue
  right: 0px
  top: 0px
  width: 450px
  text-align: right
  background rgba(#000, .7)
  padding 10px 20px 70px 20px
  border-radius 5px

  h1
    font-size: 1.5em
    font-weight: 100
    margin: 0
    padding: 0
  """
