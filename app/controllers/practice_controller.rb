class PracticeController < ApplicationController
  def index
    @user = User.new(name: "テスト太郎", age: 25)
    @items = [ "アイテム1", "アイテム2", "アイテム3" ]
    render plain: "テスト完了"
  end
end
