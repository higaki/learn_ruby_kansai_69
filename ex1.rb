def ex
  yield
rescue
  "#{$!} (#{$!.class})"
end

ex{1.to_sym} # => 
ex{1 + "1"}  # => 
