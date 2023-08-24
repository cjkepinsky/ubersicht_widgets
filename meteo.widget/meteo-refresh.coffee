today = new Date()
todayString = ("0" + today.getDate()).slice(-2) + ("0" + (today.getMonth()+1)).slice(-2) + today.getFullYear().toString().slice(-2)
threedays = new Date()
threedays.setDate(threedays.getDate() - 14);
threedaysString = ("0" + threedays.getDate()).slice(-2) + ("0" + (threedays.getMonth()+1)).slice(-2) + threedays.getFullYear().toString().slice(-2)
url = "https://www.meteo.waw.pl/ploth3.pl?hist-pr-ft-" + threedaysString + "0000-" + todayString + "0000-440-240"
html = "<div id='pressure-yesterday'><img src='" + url + "' /></div>"

url = "https://www.meteo.waw.pl/ploth3.pl?hist-pr-d-" + todayString + "0000-340-240"

# curl --output "$HOME/Downloads/pressure-today.png" 'https://www.meteo.waw.pl/ploth3.pl?hist-pr-d-3107230000-340-240'

command: """
curl -s -o "/Users/kkepins-macwro_1/Library/Application Support/Übersicht/widgets/meteo.widget/pressure-today.png" '#{url}'"""

#command: """
#curl '#{url}' --output '<div id='pressure-today'><img src='#{imgPath}'/></div>'
#"""

# the refresh frequency in milliseconds
refreshFrequency: 60000*10

render: (output) -> """
  <div id='meteo'><div id='pressure-today'><img src="http://127.0.0.1:41416/pressure-today.png" /></div></div>
"""


style: """
  color: #000
 
  #meteo
    top: 70px
    position: absolute
    z-index: -10000
  
  #pressure-yesterday
    position: absolute
    left: 0
    z-index: -10000

  #pressure-today
    left: 50px
    position: absolute
    z-index: -10000
    
  #temperature-today
    right: 750px
    position: absolute
    z-index: -10000

"""








  # temperatura: https://sggw.meteo.waw.pl/ploth3.pl?hist-ta-d-0612210000-440-240
  # ciśnienie 5 dni: https://www.meteo.waw.pl/ploth3.pl?hist-pr-ft-0412210000-0912210000-440-240
  # promieniowanie uv 5 dniowe: https://www.meteo.waw.pl/ploth3.pl?hist-xtot-ft-0412210000-0912210000-440-240
  # stężenie pyłu PM2,5 https://www.meteo.waw.pl/ploth3.pl?hist-apm2x5-ft-0412210000-0912210000-440-240

