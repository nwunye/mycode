class Image

  def initialize(array_of_arrays)
    @array_of_arrays = array_of_arrays
  end

  def output_image
    @array_of_arrays.each do |row|
      puts row.join
    end
  end

  def make_a_copy
    copy = []
    @array_of_arrays.each do |row|
      copy << row.clone
    end
    return copy
  end

  def blur(distance)
    snapshot = make_a_copy
        snapshot.each_with_index do |row,row_index|
          row.each_with_index do |cell,column_index|
            distance.times do
            for a in 1..distance
              if cell == 1
                @array_of_arrays[row_index-a][column_index] = 1 if row_index > 0
                @array_of_arrays[row_index+a][column_index] = 1 if row_index+a  < @array_of_arrays.length
                @array_of_arrays[row_index][column_index-a] = 1 if column_index > 0
                @array_of_arrays[row_index][column_index+a] = 1 if column_index+a < row.length
              end
            end
          end
        end
      end
    end
  end

image = Image.new([
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,1,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,1]
  ])
image.blur(2)
image.output_image



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