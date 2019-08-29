require "todo"

class TodoList
  def initialize
    @todos = []
  end

  def add(description, todo_class = Todo)
    @todos << todo_class.new(description)
  end

  def get(index)
    all[index]
  end

  def to_string
    all.each_with_index.map { |todo, index|
      todo_to_string(todo, index + 1)
    }.join("\n")
  end

  private

  def all
    @todos
  end

  def todo_to_string (todo, index)
    "#{index}. #{todo.description} #{todo.complete}"
  end


end
