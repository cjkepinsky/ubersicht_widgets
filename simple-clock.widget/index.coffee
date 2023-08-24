#format = '%A<br>%d.%m.%y<br>%H:%M:%S'
#format = '%H:%M:%S<br>%d.%m.%y<br>%A'
#format = '%d.%m.%y<br>%A<br/>%H:%M<br>'
format = '%d-%m-%y %A %H:%M'

command: "date +\"#{format}\""

# the refresh frequency in milliseconds
refreshFrequency: 60000

render: (output) -> """
  <h1>#{output}</h1>
"""

style: """
  color: #22AA22
  opacity: 0.7
  font-family: Helvetica Neue
  right: 0%
  top: 94%
  text-align: right
  background rgba(#000, .6)
  padding 5px 10px 5px 10px
  border-radius 5px

  h1
    font-size: 3.5em
    font-weight: 100
    margin: 0
    padding: 0
  """
