# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'time'
Tune.create(name: "The Kesh", rhythm: "jig", add_date: "20200101000000")
Tune.create(name: "John Ryan", rhythm: "polka", add_date: "20200210081253")
Tune.create(name: "Fisher's", rhythm: "hornpipe", add_date: "20190529135603")
Tune.create(name: "Tam Lin", rhythm: "reel", add_date: "20210507163120")
Tune.create(name: "A Fig For A Kiss", rhythm: "slipjig", add_date: "20221223213451")

User.create(name: "関西アイリッシュセッション", pref: "大阪", date: "第3土曜日　21時〜", create_date: "20181010132431")
User.create(name: "関東アイルランド音楽セッション会", pref: "東京", date: "毎週水曜日の夜(時間不定)", create_date: "20170421173140")

Note.create(tune_id: 1, user_id: 1, key: "G", abc:"T: The Kesh\nR: jig\nM: 6/8\nL: 1/8\nK: Gmaj\n|:G3 GAB|A3 ABd|edd gdd|edB dBA|\nGAG GAB|ABA ABd|edd gdd|BAF G3:|\n|:B2B d2d|ege dBA|B2B dBG|ABA AGA|\nBAB d^cd|ege dBd|gfg aga|bgg g3:| ", add_date: "20200101013120")
Note.create(tune_id: 2, user_id: 2, key: "D", abc:"T: John Ryan's\nR: polka\nM: 2/4\nL: 1/8\nK: Dmaj\n|:dd B/c/d/B/|AF AF|dd B/c/d/B/|AF ED|\ndd B/c/d/B/|AF Ad/e/|fd ec|1 df d2:|2 df dd/e/||\n|:fd de/f/|g>f ed/e/|fd Ad|fd/f/ a>g|\nfd- de/f/|g/a/g/f ed/e/|fd ed/c/|1 d2 d>e:|2 d2 d2|| ", add_date: "20200210083126")
Note.create(tune_id: 3, user_id: 2, key: "D", abc:"T: Fisher's\nR: hornpipe\nM: 4/4\nL: 1/8\nK: Dmaj\n|:(3ABc|'D' dAFD 'G' GBAG|'D' FDFD 'G' GBAG|'D' FDFD 'G' GBAG|'D' FDFD 'A' E2 (3ABc|\n'D' dAFD 'G' GBAG|'D' FDFD 'G' GBAG|'D' FGAB cdec|d2 d/e/d/c/ d2:|\n|:cd|'A' ecAc efge|'D' fdAd fgaf|'A' ecAc efgf|edcB A2 A2|\n'D' BGDG BdcB|'G' AFDF A2 GA|'D' BdcB 'A' AGFE|'D'D2 d2 D2:| ", add_date: "20190529152139")
Note.create(tune_id: 2, user_id: 1, key: "D", abc:"T: John Ryan'ss\nR: polkas\nM: 2/4s\nL: 1/8s\nK: Dmajs\ndd B/c/d/B/|AF ED|dd B/c/d/B/|AF E2|s\ndd B/c/d/B/|AF Ad|fd ec|d2 d2||s\nfd de/f/|gf ed|fd de/f/|gf a2|s\nfd de/f/|gf ed|fd ec|d2 d2|| ", add_date: "20210312174104")
Note.create(tune_id: 4, user_id: 1, key: "Dm", abc:"T: Tam Lin\nR: reel\nM: 4/4\nL: 1/8\nK: Dmin\nA,2DA, FA,DA,|B,2DB, FB,DB,|C2EC GCEC|FEDC A,DDC|\nA,2DA, FA,DA,|B,2DB, FB,DB,|C2EC GCEC|FEDC A,DD2:|\n|:dA~A2 FADA|dA~A2 FADA|cG~G2 EG~G2|cG~G2 cdec|\ndA~A2 FADA|dA~A2 FADA,|~B,3A, B,CDE|FDEC A,DD2:| ", add_date: "20210508213145")
Note.create(tune_id: 4, user_id: 2, key: "Bm", abc:"T: Tam Lin\nR: reel\nM: 4/4\nL: 1/8\nK: Bmin\nF2 BF dFBF|G2 BG dGBG|A2 cA eAcA|dcBA FBBA|\nF2 BF dFBF|G2 BG dGBG|A2 cA eAcA|dcBA FB B2:|\nbf ~f2 dfBf|bf ~f2 dfBf|ae ~e2 ce ~e2|ae ~e2 abc'a|\nbf ~f2 dfBf|bf ~f2 dfBF|~G3 F GABc|dBcA FB B2:| ", add_date: "20220127135251")
Note.create(tune_id: 5, user_id: 1, key: "Edor", abc:"T: A Fig For A Kiss\nR: slipjig\nM: 9/8\nL: 1/8\nK: Edor\nG2B E2B BAG|F2A D2A AGF|G2B E2B BAG|B/c/dB AGF DEF|\nG2B E2B BAG|F2A D2A AGF|G2B E2B BAG|B/c/dB AGF E3||\ng2e g2e edB|f2d dcd fed|g2e g2e edB|dBG GBd e2f|\ng2e g2e edB|f2d dcd fed|gfe fed ecA|B/c/dB AGF E2F|| ", add_date: "20221223234501")