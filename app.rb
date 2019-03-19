require 'tesseract-ocr'

e = Tesseract::Engine.new{ |e|
  e.language = :eng
  e.psm = 8
}

p e.hocr_for('testData/6_trim_edit_bin34.png')