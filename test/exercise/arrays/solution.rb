module Exercise
  module Arrays
    class << self
      def replace(array)
        array.map { |elem| elem.positive? ? array.max : elem }
      end

      def search(array, query)
        left = 0
        right = array.length - 1
        while left <= right
          mid = left + (right - left) / 2
          return mid if array[mid] == query

          if array[mid] > query
            right = mid - 1
          else
            left = mid + 1
          end
        end
        -1
      end
    end
  end
end
