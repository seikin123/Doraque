
class Brave

  def initialize
    @name = "テリー"
    @hp = 500
    @offense = 150
    @defense = 100
  end

  # 以下を削除
  # def name=(name)
  #   @name = name
  # end

  def name
    @name
  end

  # 以下を削除
  # def hp=(hp)
  #   @hp = hp
  # end

  def hp
    @hp
  end

  # 以下を削除
  # def offense=(offense)
  #   @offense = offense
  # end

  def offense
    @offense
  end

  # 以下を削除
  # def defense=(defense)
  #   @defense = defense
  # end

  def defense
    @defense
  end

end

brave = Brave.new

puts <<~TEXT
NAME：#{brave.name}
HP：#{brave.hp}
OFFENSE：#{brave.offense}
DEFENSE：#{brave.defense}
TEXT