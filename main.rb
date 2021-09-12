class Brave
  # attr_readerの記述でゲッターを省略することができる
  # 複数の値を同時に指定することができる
  attr_reader :name, :offense, :defense
  # セッターゲッターを一括定義
  attr_accessor :hp
  # 引数に**を記述：ハッシュしか受け取れなくなる
  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

end
brave = Brave.new(name: "テリー", hp: 500, offense: 150, defense: 100)

brave.hp -= 30

puts "#{brave.name}はダメージを受けた! 残りHPは#{brave.hp}だ"

class Monster
  attr_reader :name, :offense, :defense

  attr_accessor :hp

  # **paramsにすることでハッシュ形式の引数しか受け付けないようにできる
  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

end

monster = Monster.new(name: "スライム", hp: 250, offense: 200, defense: 100)
