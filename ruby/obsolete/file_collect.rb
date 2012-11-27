def read_csv(filename)
  File.open(filename).collect do |p|
    p
  end
end

def run(filename)
  test_array = read_csv(filename)

end


