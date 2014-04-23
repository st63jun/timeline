class Stack

  def self.top
    Stack.all.first
  end

  def self.bottom
    Stack.all.last
  end

  def self.push(task)
    if Stack.top
      task.parent_id = Stack.top.id
    end
    task.pushed_at = DateTime.now
    task.popped_at = nil
    task.save
  end

  def self.pop
    Stack.top.update(popped_at: DateTime.now)
  end

  def self.all
    Task.where(popped_at: nil).order('pushed_at DESC')
  end

end
