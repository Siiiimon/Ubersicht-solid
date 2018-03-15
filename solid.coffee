# inspired by shades-of-k

counter = 0

render: (_) -> """""" # prevents it from rendering "undefinded"

refreshFrequency: '0.33s' # configure how fast the color changes

update: (output, domEl) ->
  counter++
  # 2nd parameter: saturation
  # 3rd^ parameter: lightness
  $(document.body).css("background-color","hsl("+counter+", 20%, 35%)")
  counter = 0 if counter > 360
