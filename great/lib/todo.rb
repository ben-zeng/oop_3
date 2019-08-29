class Todo
  def initialize(description)
    @description = description
    @complete = false

  end

  def description
    @description
  end

  def complete
    return "not complete" if @complete == false
  end

end

