def ex
  yield
rescue ...        # ここで KeyError を捕捉しよう
  "#{$!} (#{$!.class})"
end

ex{...}           # ここで KeyError を起こそう
