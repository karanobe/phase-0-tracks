class TodoList

  def initialize(items)
    @items = items
  end

  def get_items
    @items
  end

  def add_item(add)
    @items.push(add)
  end

  def delete_item(delete)
    @items.delete(delete)
  end

  def get_item(item_index)
    @items[item_index]
  end

end
