# CODED SUCCESSFULLY!!!

class Image

  def initialize(array_of_arrays)
    @array_of_arrays = array_of_arrays
  end

  def output_image
    @array_of_arrays.each do |row|
      puts row.join
    end
  end

end

image = Image.new([
  [0,1,1,1],
  [1,0,0,0]
  ])
image.output_image