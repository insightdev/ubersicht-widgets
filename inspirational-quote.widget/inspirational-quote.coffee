command: 'curl -s "http://feeds.feedburner.com/brainyquote/QUOTEBR"'

refreshFrequency: '5h'

style: """
  bottom: 22%
  left: 5%
  color: rgba(255, 255, 255, 0.65)
  font-family: Helvetica Neue
  max-width: 25%


  .output
    font-size: 24px
    font-weight: lighter
	  font-smoothing: antialiased

  .author, .example, .example-meaning
    text-transform: capitalize
    font-size: 18px
  .author
    text-align: right
"""

render: (output) -> """
  <div class="output">
    <div class="quote"></div>
    <div class="author"></div>
  </div>
"""

update: (output, domEl) ->
  # Define constants, and extract the juicy html.
  dom = $(domEl)
  xml = $.parseXML(output)
  $xml = $(xml)
  description = $.parseHTML($xml.find('description').eq(1).text())
  $description = $(description)

 # Find the info we need, and inject it into the DOM.
  dom.find('.quote').html $xml.find('description').eq(2)
  dom.find('.author').html $xml.find('title').eq(2)


