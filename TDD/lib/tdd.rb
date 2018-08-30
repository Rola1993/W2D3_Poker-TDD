
class Array
  
  def my_uniq
    set = Set.new
    res = []
    self.each do |el|
      res << el if !set.include?(el)
      set.add(el)
    end
    return res
  end 

  def two_sum
    res = []
  (0...self.length).each do |i|
    sec = 0 - self[i]
    (i+1...self.length).each do |j|
      res << [i,j] if self[j] == sec
    end
  end
    res  
  end
  
end 

def my_transpose(matrix)
  row = matrix.length
  col = matrix[0].length
  
  res = Array.new(col) {Array.new(row)}
  
  (0...col).each do |i|
    (0...row).each do |j|
      res[i][j] = matrix[j][i]
    end
  end
  
  return res
end

def stock_picker(array)
  diff = 0
  res = []
  (0...array.length).each do |i|
    (i+1...array.length).each do |j|
      ans = array[j] - array[i] 
      if ans > diff 
        diff = ans 
        res = [i,j]
      end 
    end 
  end 
  res
end

