module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        for elem in self do
          yield(elem)
        end
        self
      end

      # Написать свою функцию my_map
      def my_map
        array = MyArray.new
        my_each { |elem| array << yield(elem) }
        array
      end

      # Написать свою функцию my_compact
      def my_compact
        array = MyArray.new
        my_each { |elem| array << elem unless elem.nil? }
        array
      end

      # Написать свою функцию my_reduce
      def my_reduce(acc = nil)
        my_each do |elem|
          if acc.nil?
            acc = elem
            next
          end
          acc = yield(acc, elem)
        end
        acc
      end
    end
  end
end
