# TetoOneCounter
Rank tracker for Tetris99

# 動作環境
テスト環境
- Windows 10
- minGW g++
- Ruby 2.6.1p33
- Tesseract v4.0.0.20190314

# WIP
gem
- tesseract-ocr
  - ffi_libでエラー
  - includeディレクトリがうまく参照されてないかも？
  
- rtesseract
  - RMagickで画像処理した後，tesseractコマンドを実行している．らしい．
  - 中身よくわからんのでやっぱりkNN書いた方が良さそう