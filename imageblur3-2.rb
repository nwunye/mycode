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
          if cell == 1
            for a in 0..distance
              for b in 0..distance
                if a+b <= distance
                  @array_of_arrays[row_index-a][column_index-b] = 1 if row_index > 0 && column_index > 0
                  @array_of_arrays[row_index+a][column_index-b] = 1 if row_index+a < @array_of_arrays.length && column_index > 0
                  @array_of_arrays[row_index-b][column_index+a] = 1 if row_index > 0 && column_index+a < row.length
                  @array_of_arrays[row_index+b][column_index+a] = 1 if column_index+a < row.length && row_index+b < @array_of_arrays.length
                  @array_of_arrays[row_index+a][column_index+b] = 1 if column_index+b < row.length && row_index+a < @array_of_arrays.length
                  @array_of_arrays[row_index+b][column_index-a] = 1 if column_index > 0 && row_index+b < @array_of_arrays.length
                  @array_of_arrays[row_index-a][column_index+b] = 1 if row_index > 0 && column_index+b < row.length
                end
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
  [1,0,0,0,0,0,0,0,1],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [1,0,0,0,0,0,0,0,1],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0]
  ])
image.blur(3)
image.output_image