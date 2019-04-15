# TetoOneCounter
Rank tracker for Tetris99

# 動作環境
テスト環境
- Windows 10
- minGW g++
- Ruby 2.6.1p33
- Tesseract v4.0.0.20190314

- ImageMagick-6.9.10-34-Q16-x64-dll.exe

- ImageMagick 6
- RMagick 3.0.0

- 画像サイズ：1280x720, (1200x675, 1920x1080)

# WIP
gem
- tesseract-ocr
  - ffi_libでエラー
  - includeディレクトリがうまく参照されてないかも？
  
- rtesseract
  - RMagickで画像処理した後，tesseractコマンドを実行している．らしい．
  - 中身よくわからんのでやっぱりkNN書いた方が良さそう
  
ToDo
- 1～3位はフォントサイズが違う  
→ テンプレートマッチング？

- なんかそもそもフォントが違う  
→ アップデートによりフォントが変更になった

- 15 が 1S に判定される  
→ 1S を判定して 15として格納？

- command  
tesseract file out --psm 7 digits; cat out.txt