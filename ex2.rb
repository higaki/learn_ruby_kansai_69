# 素直な実装
def ex
  yield
rescue KeyError
  "#{$!} (#{$!.class})"
rescue StopIteration
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

# ~> -:20:in `+': String can't be coerced into Fixnum (TypeError)
# ~> 	from -:20:in `block in <main>'
# ~> 	from -:3:in `ex'
# ~> 	from -:20:in `<main>'
