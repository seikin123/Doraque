class Brave
  # attr_readerの記述でゲッターを省略することができる
  # 複数の値を同時に指定することができる
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  # 必殺攻撃の計算に使う定数
  SPECIAL_ATTACK_CONSTANT = 1.5

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def attack(monster)
    puts "#{@name}の攻撃"

    attack_num = rand(4)

    if attack_num == 0
      puts "必殺攻撃"
      damage = calculate_special_attack - monster.defense
    else
      puts "通常攻撃"
      damage = @offense - monster.defense
    end

    monster.hp -= damage

    puts "#{monster.name}は#{damage}のダメージを受けた"
    puts "#{monster.name}の残りHPは#{monster.hp}だ"
  end

  def calculate_special_attack
    @offense * SPECIAL_ATTACK_CONSTANT
  end

end

class Monster
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  POWER_UP_RATE = 1.5

  # **paramsにすることでハッシュ形式の引数しか受け付けないようにできる
  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
  
  def attack(brave)
    puts "#{@name}の攻撃"
  
    # 勇者に与えるダメージの計算
    damage = @offense - brave.defense
    # 勇者クラスのHPにダメージを反映
    brave.hp -= damage

    puts "#{brave.name}は#{damage}のダメージを受けた"
    puts "#{brave.name}の残りHPは#{brave.hp}だ"
  end
end

brave = Brave.new(name: "テリー", hp: 500, offense: 150, defense: 100)
monster = Monster.new(name: "スライム", hp: 250, offense: 200, defense: 100)

brave.attack(monster)


