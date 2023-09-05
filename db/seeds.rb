# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'time'
Tune.create(name: "The Kesh", rhythm: "Jig")
Tune.create(name: "John Ryan", rhythm: "Polka")
Tune.create(name: "Fisher's", rhythm: "Hornpipe")
Tune.create(name: "Tam Lin", rhythm: "Reel")
Tune.create(name: "A Fig For A Kiss", rhythm: "Slip Jig")

User.create(name: "関西アイリッシュセッション", pref: "大阪", date: "第3土曜日　21時〜", login_id: "ksis", password: "kansaiyd", password_confirmation: "kansaiyd")
User.create(name: "関東アイルランド音楽セッション会", pref: "東京", date: "毎週水曜日の夜(時間不定)", login_id: "eims", password: "kantou23", password_confirmation: "kantou23")
User.create(name: "ゲスト", pref:"未定", date: "不定期", login_id: "guest", password: "guest", password_confirmation: "guest")

Note.create(tune_id: 1, user_id: 1, status:"public", key: "G", scale: "major", abc:"T: The Kesh\nR: jig\nM: 6/8\nL: 1/8\nK: Gmaj\n|:G3 GAB|A3 ABd|edd gdd|edB dBA|\nGAG GAB|ABA ABd|edd gdd|BAF G3:|\n|:B2B d2d|ege dBA|B2B dBG|ABA AGA|\nBAB d^cd|ege dBd|gfg aga|bgg g3:| ")
Note.create(tune_id: 2, user_id: 2, status:"public", key: "D", scale: "major", abc:"T: John Ryan's\nR: polka\nM: 2/4\nL: 1/8\nK: Dmaj\n|:dd B/c/d/B/|AF AF|dd B/c/d/B/|AF ED|\ndd B/c/d/B/|AF Ad/e/|fd ec|1 df d2:|2 df dd/e/||\n|:fd de/f/|g>f ed/e/|fd Ad|fd/f/ a>g|\nfd- de/f/|g/a/g/f ed/e/|fd ed/c/|1 d2 d>e:|2 d2 d2|| ")
Note.create(tune_id: 3, user_id: 2, status:"public", key: "D", scale: "major", abc:"T: Fisher's\nR: hornpipe\nM: 4/4\nL: 1/8\nK: Dmaj\n|:(3ABc|'D' dAFD 'G' GBAG|'D' FDFD 'G' GBAG|'D' FDFD 'G' GBAG|'D' FDFD 'A' E2 (3ABc|\n'D' dAFD 'G' GBAG|'D' FDFD 'G' GBAG|'D' FGAB cdec|d2 d/e/d/c/ d2:|\n|:cd|'A' ecAc efge|'D' fdAd fgaf|'A' ecAc efgf|edcB A2 A2|\n'D' BGDG BdcB|'G' AFDF A2 GA|'D' BdcB 'A' AGFE|'D'D2 d2 D2:| ")
Note.create(tune_id: 2, user_id: 1, status:"public", key: "D", scale: "major", abc:"T: John Ryan's\nR: polka\nM: 2/4\nL: 1/8\nK: Dmaj\ndd B/c/d/B/|AF ED|dd B/c/d/B/|AF E2|\ndd B/c/d/B/|AF Ad|fd ec|d2 d2||\nfd de/f/|gf ed|fd de/f/|gf a2|\nfd de/f/|gf ed|fd ec|d2 d2|| ")
Note.create(tune_id: 4, user_id: 1, status:"public", key: "D", scale: "miner", abc:"T: Tam Lin\nR: reel\nM: 4/4\nL: 1/8\nK: Dmin\nA,2DA, FA,DA,|B,2DB, FB,DB,|C2EC GCEC|FEDC A,DDC|\nA,2DA, FA,DA,|B,2DB, FB,DB,|C2EC GCEC|FEDC A,DD2:|\n|:dA~A2 FADA|dA~A2 FADA|cG~G2 EG~G2|cG~G2 cdec|\ndA~A2 FADA|dA~A2 FADA,|~B,3A, B,CDE|FDEC A,DD2:| ")
Note.create(tune_id: 4, user_id: 2, status:"public", key: "B", scale: "miner", abc:"T: Tam Lin\nR: reel\nM: 4/4\nL: 1/8\nK: Bmin\nF2 BF dFBF|G2 BG dGBG|A2 cA eAcA|dcBA FBBA|\nF2 BF dFBF|G2 BG dGBG|A2 cA eAcA|dcBA FB B2:|\nbf ~f2 dfBf|bf ~f2 dfBf|ae ~e2 ce ~e2|ae ~e2 abc'a|\nbf ~f2 dfBf|bf ~f2 dfBF|~G3 F GABc|dBcA FB B2:| ")
Note.create(tune_id: 5, user_id: 1, status:"public", key: "E", scale: "dorian", abc:"T: A Fig For A Kiss\nR: slipjig\nM: 9/8\nL: 1/8\nK: Edor\nG2B E2B BAG|F2A D2A AGF|G2B E2B BAG|B/c/dB AGF DEF|\nG2B E2B BAG|F2A D2A AGF|G2B E2B BAG|B/c/dB AGF E3||\ng2e g2e edB|f2d dcd fed|g2e g2e edB|dBG GBd e2f|\ng2e g2e edB|f2d dcd fed|gfe fed ecA|B/c/dB AGF E2F|| ")