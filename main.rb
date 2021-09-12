class Brave
  #セッター
  def name=(name)
    @name = name
  end

  # nameのゲッター
  def name
    @name
  end

  #セッター クラス内にあるインスタンス変数の値を取得し、クラス外から参照できるようにするためのメソッド
  def hp=(hp)
    @hp = hp
  end

  # hpのゲッター
  def hp
    @hp
  end

  #セッター
  def offense=(offense)
    @offense = offense
  end

  # offenseのゲッター
  def offense
    @offense
  end

  #セッター
  def defense=(defense)
    @defense = defense
  end

  # defenseのゲッター
  def defense
    @defense
  end
end

brave = Brave.new

brave.name = "テリー"
brave.hp = 500
brave.offense = 150
brave.defense = 100

puts <<~TEXT #ヒアドキュメントの記法
NAME：#{brave.name}
HP：#{brave.hp}
OFFENSE：#{brave.offense}
DEFENSE：#{brave.defense}
TEXT