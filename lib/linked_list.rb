require_relative 'node'

class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, @head)
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if @head == nil
    return @head.data
  end
  
  # Time complexity - O(n), where n is the length of the linked list
  # Space complexity - O(1)
  def length
    len = 0
    current = @head
    
    while current != nil
      len += 1
      current = current.next
    end
    
    return len
  end
  
  # Time complexity - O(n), where n is the length of the linked list
  # Space complexity - O(1)
  def add_last(data)
    if @head == nil
      add_first(data)
      return
    end
    
    current = @head
    
    while current.next != nil
      current = current.next
    end
    
    current.next = Node.new(data)
  end
  
  # Time complexity - O(n), where n is the length of the linked list
  # Space complexity - O(1)
  def get_last
    if @head == nil
      return nil
    end
    
    current = @head
    
    while current.next != nil
      current = current.next
    end
    
    return current.data
  end
  
  # Time complexity - O(n), where n is the index
  # Space complexity - O(1)
  def get_at_index(index)
    i = 0
    current = @head
    
    while current != nil && i <= index
      if i == index
        return current.data
      end
      
      current = current.next
      i += 1
    end
    
    return nil
  end
end
