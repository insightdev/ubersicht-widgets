style: """
  right: 0.3%
  top: 0%
  width: 6.5%
  max-height: 400px

  .panel
    background-color: rgba(245, 245, 245, 0.4)
    border-bottom-left-radius: 6px
    border-bottom-right-radius: 6px
    text-shadow: 1px 1px 0px rgba(105, 105, 105, .4)
    font-size: 270pt
"""

command: "cd /Users/alex; ls"



render: (output) -> """
  <div class="panel">&nbsp;</div>
"""
