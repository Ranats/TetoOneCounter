- 1～3位はフォントサイズが違う  
→ テンプレートマッチング？

- なんかそもそもフォントが違う  
→ アップデートによりフォントが変更になった

- 画像処理   
 二値化  
  1. クロップ  
  2. 2値化  
  3. 塗りつぶし（輪郭検出 → 内側検出 → 塗りつぶし？）  
（二値化しただけで内側がゼロになる）

 順位バッジの背景部分をマスクとして差分  
 （一致する部分だけ取り除く？減算？除算？）
 
 1～9の画像を元に4～99位の画像を作成  
 テンプレートマッチングをする？  
 -> OpenCV ?  
 ROpenCV と OpenCV 3.0 つかえる？ (他のRuby-OpenCV gem は2系しかサポートしてなさそう)  
 https://github.com/D-Alex/ropencv  
 https://qiita.com/khsk/items/ef73d9520874db2767de
 
- GUI  
  GTK 3 / Glade  
  https://qiita.com/kojix2/items/d9da8e08757dcc6b1a7d
  
 
- 15 が 1S に判定される  
→ 1S を判定して 15として格納？