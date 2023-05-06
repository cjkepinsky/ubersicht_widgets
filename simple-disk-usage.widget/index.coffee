command: "df -H /"

# the refresh frequency in milliseconds
refreshFrequency: 60000

render: (output) -> """
  <h1>#{output}</h1>
"""


style: """
  color: #22AA22
  opacity: 0.7
  font-family: Helvetica Neue
  right: 70%
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
  lines = output.split "\n"
  mainDisk = lines[1].split(/\ +/)

  $(domEl).find("h1").text mainDisk[3]
