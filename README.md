# Ruby初級者向けレッスン 69回
## 例外

### 演習問題1
いろいろな例外を発生させてみよう

```ruby
def ex
  yield
rescue
  "#{$!} (#{$!.class})"
end

ex{1.to_sym} # => "undefined method `to_sym' for 1:Fixnum (NoMethodError)"
ex{1 + "1"}  # => "String can't be coerced into Fixnum (TypeError)"
```

### 演習問題2
いろいろな例外を発生させてみよう

- `KeyError` を捕捉しよう
- `StopIteration` も捕捉しよう

### 演習問題3
以下のコードをデバッグしてみよう

- どんな例外が発生するか
- 本当は何をしたかったのか
- 修正してみよう

```ruby
[0..9].map{|i| i * 2}
```
