command: 'lsappinfo info "DataSpell"| grep "launch time"'

# the refresh frequency in milliseconds
refreshFrequency: 600000

render: (output) -> """
  <h1>#{output}</h1>
"""


style: """
  color: #22AA22
  opacity: 0.6
  font-family: Helvetica Neue
  right: 0px
  top: 790px
  text-align: right
  background rgba(#000, .6)
  padding 5px 20px 70px 20px
  border-radius 5px

  h1
    font-size: 1.4em
    font-weight: 100
    margin: 0
    padding: 0
  """


update: (output, domEl) ->

  res = output.split(/\ /)
  if res.length > 0
    last = res[14].split(/,+/)
    $(domEl).find("h1").text "coding for: " + res[11] + " " + res[12] + " " + res[13] + " " + last[0]
  else
    $(domEl).find("h1").text "not coding now… "
  
  
  