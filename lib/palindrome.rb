class String
  def palindrome?
    # returns true if length < 2 or it is a palindrome
    self.length < 2 || is_palindrome?(self) ? true : false
  end
  
  protected

  def is_palindrome?(array)
    # compares reversed string to original
    reverse(array.to_clean_array) == array.to_clean_array.join
  end

  def to_clean_array
    # removes undesirable character and returns an array
    self.gsub(/[^a-z0-9']/, '').split('')
  end

  def reverse(array, result = [])
    # returns the reversed array
    (array.size).times{result << array.pop}
    result.join
  end
end
