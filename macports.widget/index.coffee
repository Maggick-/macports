command: "/opt/local/bin/port outdated"

refreshFrequency: 43000

style: """
  top: 250px
  left: 15px
  font-family: Helvetica Neue
  text-align: left

  .Header
    font-size: 12pt
    color: #f00

  .Normal
    font-size: 8pt

"""


render: -> """
"""

update: (output, domEl) ->
  div = $(domEl)

  test=output.split(":")
  zones=test[1].split("\n")

  timeHTML = "<div>"

  timeHTML = timeHTML + "<div class='Header'>" + test[0] + ":</div>"

  for zone, idx in zones

    #if idx == 0

      #timeHTML = timeHTML + "<lh class='headerlh'>" + zone + "</lh>"

    #else

    if zone != ''

      timeHTML = timeHTML + "<div class='Normal'>" + idx + '. ' + zone + "</div>"

      timeHTML= timeHTML+"</div>"

  div.html(timeHTML)