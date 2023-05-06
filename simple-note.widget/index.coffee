render: (output) -> """
<div class="one" contenteditable="true">
  <h1>e2e tests</h1>
  <h2>
  gcm feat<br/>
  merge with main<br/>
  - gc main<br/>
  - gpl main<br/>
  - gc feat<br/>
  - g merge main<br/>
  rup<br/>
  rush lint<br/>
  rush cypress-test<br/>
  rush change<br/>
  nrt<br/>
  gcm<br/>
  gps feat<br/>
</h2>
</div>

<div class="ui" contenteditable="true">
<h1>UI Tests</h1>
<h2>
- nrct</br>
- gcm</br>
- rush cypress-test --verbose --to @advanced/module-cloud-financials-applets-ui<br/>
- gcl<br/>
- gps<br/>
- ghrct branch module
</h2>
</div>

<div class="two" contenteditable="true">
<h1>Code Review</h1>
<h2>
- pr</br>
- ghrct<br/>
- wf</br>
- cr in intellij<br/>
</h2>
</div>

<div class="devportal" contenteditable="true">
<h1>Dev Portal</h1>
<h2>
- rush build</br>
- dev <br/>
- gcm<br/>
- g merge master</br>
- gps <br/>
</h2>
</div>
"""

style: """
  color: #2d2
  opacity: 0.7
  font-family: Helvetica Neue
  left: 10px
  top: 25px
  width: 250px
  height: 800px
  text-align: left
  background rgba(#000, .6)
  border-radius 5px

  h1, h2
    font-size: 2em
    font-weight: 50
    margin: 5px
    padding: 0
  h2
    font-size: 1.1em
    font-weight: 100
    padding: 10px 0

  div.one
    left: 10px

  div.two
    left: 100px

  """
