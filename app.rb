require 'rtesseract'
require 'rmagick'
require 'minitest/autorun'

img_src = "testData/22.jpg"

def read (src)

  x = 1120.0 / 1920
  y = 80.0 / 1080
  w = 165.0 / 1920
  h = 120.0 / 1080

  original = Magick::Image.read(src).first

  width = original.columns
  height = original.rows

# 絶対座標 → 1920x1080前提の座標 → %指定？ → 解像度取得，倍率指定
  image = original.crop(width*x, height*y, width*w, height*h)
  image = image.scale(4)
  image = image.threshold(Magick::QuantumRange*0.34)
  fname = 'croppedData/crop' + File.basename(src)
  image.write(fname)
# メモリ解放
  image.destroy!

  image = RTesseract.new(fname, psm: 8)
  return image.to_s #image.to_box
end

dir = "testData"
p Dir.foreach("testData")
Dir.foreach(dir) do |file|
  next if [".",".."].include?(file)
  p read(dir + "/" + file)

end