class Brave
  # 引数に**を記述：ハッシュしか受け取れなくなる
  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def name
    @name
  end

  def hp
    @hp
  end

  def offense
    @offense
  end

  def defense
    @defense
  end

end

brave = Brave.new(name: "テリー", hp: 500, offense: 150, defense: 100)

puts "NAME：#{brave.name}"
puts "HP：#{brave.hp}"
puts "OFFENSE：#{brave.offense}"
puts "DEFENSE：#{brave.defense}"
