# command: "ps -A -o %cpu | awk '{s+=$1} END {print s \"%\"}'"

command: "top -F -R -l3 | grep 'CPU usage' | tail -1 | egrep -o '[0-9]{0,3}\.[0-9]{0,2}% idle' | sed 's/% idle//'"


refreshFrequency: 1000

render: (output) -> """
  <h1>#{output}</h1>
"""


style: """
  color: #22AA22
  opacity: 0.7
  font-family: Helvetica Neue
  right: 0px
  top: 1100px
  text-align: right
  background rgba(#000, .6)
  padding 5px 20px 70px 20px
  border-radius 5px

  h1
    font-size: 2.5em
    font-weight: 100
    margin: 0
    padding: 0
  """

update: (output, domEl) ->
  $(domEl).find('h1').html(output+'%')

