require 'rtesseract'

image = RTesseract.new("testData/6_trim_edit_bin34.png", psm: 8)
p image.to_box