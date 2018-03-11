# THE NOTES FOR THIS CODE ARE IN "imageblur2notes.md"

class Image

  def initialize(array_of_arrays)
    @array_of_arrays = array_of_arrays
  end

  def output_image
    @array_of_arrays.each do |row|
      puts row.join
    end
  end

  # def blur
  #   @array_of_arrays.each_with_index do |row,row_index|
  #     row.each_with_index do |cell,column_index|
  #       if cell == 1
  #         @array_of_arrays[row_index-1][column_index] = 1 if row_index > 0
  #         @array_of_arrays[row_index+1][column_index] = 1 if row_index+1  != @array_of_arrays.length
  #         @array_of_arrays[row_index][column_index-1] = 1 if column_index > 0
  #         @array_of_arrays[row_index][column_index+1] = 1 if column_index+1 != row.length
  #       end
  #     end
  #   end
  # end

  def make_a_copy
    copy = []
    @array_of_arrays.each do |row|
      copy << row.clone
    end
    return copy
  end


  def blur
    snapshot = make_a_copy
    snapshot.each_with_index do |row,row_index|
      row.each_with_index do |cell,column_index|
        if cell == 1
          @array_of_arrays[row_index-1][column_index] = 1 if row_index > 0
          @array_of_arrays[row_index+1][column_index] = 1 if row_index+1  != @array_of_arrays.length
          @array_of_arrays[row_index][column_index-1] = 1 if column_index > 0
          @array_of_arrays[row_index][column_index+1] = 1 if column_index+1 != row.length
        end
      end
    end
  end

end

image = Image.new([ [0,0,0,0], [0,0,0,0], [0,0,0,0], [0,1,0,0], [0,0,0,0], [0,0,0,0] ])
image.blur
image.output_image
# puts
# image = Image.new([
# [0,0,0,0],
# [0,0,1,0],
# [0,0,0,0],
# [0,1,0,0],
# [0,0,0,0],
# [0,0,0,0]
# ])
# image.blur
# image.output_image
# puts
# image = Image.new([
# [0,0,0,0],
# [0,0,0,0],
# [0,0,0,0],
# [0,0,0,0],
# [1,0,0,0],
# [0,0,0,0]
# ])
# image.blur
# image.output_image





# image = Image.new([
#   [0,1,1,1],
#   [1,0,0,0],
#   [0,1,0,1],
#   [0,1,0,0]
#   ])
# image.blur
# image.output_image
# puts
# image = Image.new([
#   [1,0,0,1],
#   [0,0,0,0],
#   [0,0,0,0],
#   [1,0,0,1]
#   ])
# image.blur
# image.output_image