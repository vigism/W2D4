class MyQueue
  
  def initialize
    @line = []
  end

  def enqueue(el)
    @line << el
  end

  def dequeue
    @line.shift
  end

  def peek
    @line.first
  end

  def empty?
    @line.empty?
  end

  def size
    @line.size
  end
end