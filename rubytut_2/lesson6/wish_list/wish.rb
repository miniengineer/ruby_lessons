# frozen_string_literal: true

# Сундук несбывшихся желаний
# А теперь стремительно напишите для вашего «Сундука желаний» скрипт, который выводит

# желания, которые уже должны были сбыться на текущий день;
# желание, которым ещё предстоит сбыться.
# Как-то так:

# Эти желания должны уже были сбыться к сегодняшнему дню
# 13.08.1912: Найти священный Грааль
# 20.07.1944: Захватить мир
# 13.08.2015: Протестировать работу программы "Сундук желаний"

# А этим желаниям ещё предстоит сбыться
# 08.03.2018: Сделать курс по Node.JS

# TODO
# rewrite implementation with OOP
# make Wish a class

class Wish

  # receives a node with information about wish
  # doesn't care about creating a file or where to get the node from
  def initialize(node)
    @text = node.text.strip
    @date = Date.parse(node.attributes['deadline'])
  end

  # check whether task is overdue
  def overdue
    @date > Date.today
  end

  # display task in a deadline: task_title format
  def to_s
    "#{@date.to_s}: #{@text}"
  end
end
