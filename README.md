# README

binding.pryを使ってデバッグする練習

よく使うコマンド： rails c - コンソールを起動

params - パラメータを表示
hoge_params - パラメータを表示
params[:hoge] - 'hoge'のパラメータを表示
params[:key] - パラメータの値を表示

@hoge.attributes - モデルの属性を表示
@hoge.hoge - モデルのメソッドを表示

# console内でそのまま使用可能
ls - 利用可能なメソッドやローカル変数の一覧
whereami - 現在の場所の確認
next - 次の行へ
continue - 実行を再開
show-source - メソッドの定義を表示


# デバッグのテクニック
 curl -X POST -d '{"key":"value"}' http://localhost:3000/hoge - パラメータを送信

* ...
