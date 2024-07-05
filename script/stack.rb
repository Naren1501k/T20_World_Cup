class Stack
    def initialize
      @stack = []
    end
  
    def push(item)
      @stack.push(item)                                                                                                                                                  
    end
  
    def pop
      @stack.pop
    end
  
    def peek
      @stack.last
    end
end
  
stack = Stack.new

stack.push(5)

stack.push(10)

stack.push(15)

puts "Peek item: #{stack.peek}" 

puts "Popped item: #{stack.pop}" 

puts "Popped item: #{stack.pop}"  

stack.push(20)


  