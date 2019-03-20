require 'rtesseract'
require 'rmagick'

img_src = "testData/22.jpg"

original = Magick::Image.read(img_src).first

# 絶対座標 → 1920x1080前提の座標 → %指定？ → 解像度取得，倍率指定
image = original.crop(1120,85,165,105)
image = image.scale(4)
image = image.threshold(Magick::QuantumRange*0.34)
image.write('crop.jpg')

# メモリ解放
image.destroy!

image = RTesseract.new("crop.jpg", psm: 8)
p image.to_box