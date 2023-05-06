
#command: """
#curl 'curl 'https://www.meteo.waw.pl/ploth3.pl?hist-pr-d-0612210000-340-240' --output '/Users/kkepins-macwro/Library/Application Support/Übersicht/widgets/meteo.widget/pressure-today.png'
#"""

# Set the refresh frequency. 
refreshFrequency: 1000*60*30

style: """
  color: #fff
  top: 0
  right: 0
 
  #meteo
    top: 1170px
    position: absolute
    z-index: -10000
  
  #pressure-yesterday
    right: 2100px
    position: absolute
    z-index: -10000

  #pressure-today
    right: 1760px
    position: absolute
    z-index: -10000
    
  #temperature-today
    right: 750px
    position: absolute
    z-index: -10000

"""
   
render: -> """
<div id='meteo'></div>
"""

update: (output, domEl) ->
  mydiv = $(domEl).find('#meteo')
  
  today = new Date()
  todayString = ("0" + today.getDate()).slice(-2) + ("0" + (today.getMonth()+1)).slice(-2) + today.getFullYear().toString().slice(-2)
    
  threedays = new Date()
  threedays.setDate(threedays.getDate() - 14);
  threedaysString = ("0" + threedays.getDate()).slice(-2) + ("0" + (threedays.getMonth()+1)).slice(-2) + threedays.getFullYear().toString().slice(-2)
  url = "https://www.meteo.waw.pl/ploth3.pl?hist-pr-ft-" + threedaysString + "0000-" + todayString + "0000-440-240"
  html = "<div id='pressure-yesterday'><img src='" + url + "' /></div>"
  
  
  
#  yesterday = new Date()
#  yesterday.setDate(yesterday.getDate() - 1);
#  yesterdayString = ("0" + yesterday.getDate()).slice(-2) + ("0" + (yesterday.getMonth()+1)).slice(-2) + yesterday.getFullYear().toString().slice(-2)
#  url = "https://www.meteo.waw.pl/ploth3.pl?hist-pr-d-" + yesterdayString + "0000-340-240"
#  html = "<div id='pressure-yesterday'><img src='" + url + "' /></div>"
  

  url = "https://www.meteo.waw.pl/ploth3.pl?hist-pr-d-" + todayString + "0000-340-240"
  html = html + "<div id='pressure-today'><img src='" + url + "' /></div>"
  
#  url = "https://sggw.meteo.waw.pl/ploth3.pl?hist-ta-d-" + todayString + "0000-440-240"
#  html = html + "<div id='temperature-today'><img src='" + url + "' /></div>"
  
  mydiv.html(html)

  # temperatura: https://sggw.meteo.waw.pl/ploth3.pl?hist-ta-d-0612210000-440-240
  # ciśnienie 5 dni: https://www.meteo.waw.pl/ploth3.pl?hist-pr-ft-0412210000-0912210000-440-240
  # promieniowanie uv 5 dniowe: https://www.meteo.waw.pl/ploth3.pl?hist-xtot-ft-0412210000-0912210000-440-240
  # stężenie pyłu PM2,5 https://www.meteo.waw.pl/ploth3.pl?hist-apm2x5-ft-0412210000-0912210000-440-240

