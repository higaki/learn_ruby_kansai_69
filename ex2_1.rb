def ex
  yield
rescue KeyError, StopIteration
  # 同じ対処をするなら rescue は、まとめられる
  "#{$!} (#{$!.class})"
end

# 例外が発生しなければブロックの評価結果が返る
ex{1 + 1}                       # => 2

# KeyError の捕捉
ex{{}.fetch(:ex)}               # => "key not found: :ex (KeyError)"

# StopIteration の捕捉
ex{[].each.next}                # => "iteration reached an end (StopIteration)"

# 捕捉できない例外
ex{1 + "1"}
# ~> -:18:in `+': String can't be coerced into Fixnum (TypeError)
# ~> 	from -:18:in `block in <main>'
# ~> 	from -:2:in `ex'
# ~> 	from -:18:in `<main>'
