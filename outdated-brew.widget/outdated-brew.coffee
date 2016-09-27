
refreshFrequency: '1h' # 60 minutes by default

style: """
  // Position the widget on your screen
  top 10%
  left 42%

  // Change the style of the widget
  color rgb(0,0,0)
  font-family Helvetica Neue
  background rgba(#fff, .4)
  padding 10px 10px 5px
  border-radius 5px

  .container
    position: relative
    clear: both

  .widget-title
    font-size 40px
    text-transform uppercase
    font-weight bold
"""

command: "/usr/local/bin/brew outdated"

render: ->

  """
  <div class="container">
    <div class="widget-title">update homebrew!</div>
  </div>
  """

update: (output, domEl) ->
  if !output
    $(domEl).hide()
  else
    $(domEl).show()
