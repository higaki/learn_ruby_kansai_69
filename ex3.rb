def ex
  yield
rescue
  "#{$!} (#{$!.class})"
end

ex{[0..9].map{|i| i * 2}}       # =>
