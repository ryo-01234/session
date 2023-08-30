class ApplicationController < ActionController::Base
    #各ページの楽曲検索フォームに使用する変数を定義
    $key_selector = ["all"].concat(Note.pluck(:key).uniq)
    $scale_selector = ["all"].concat(Note.pluck(:scale).uniq)
    $rhythm_selector = ["all"].concat(Tune.pluck(:rhythm).uniq)
end
