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

[回答例](https://github.com/higaki/learn_ruby_kansai_69/blob/master/ex1.rb)

### 演習問題2
いろいろな例外を発生させてみよう

- `KeyError` を捕捉しよう
- `StopIteration` も捕捉しよう

[素直な解答例](https://github.com/higaki/learn_ruby_kansai_69/blob/master/ex2.rb)  
[rescue するクラスは列挙できる](https://github.com/higaki/learn_ruby_kansai_69/blob/master/ex2_1.rb)  
[親クラスでまとめて rescue](https://github.com/higaki/learn_ruby_kansai_69/blob/master/ex2_2.rb)

### 演習問題3
以下のコードをデバッグしてみよう

- どんな例外が発生するか
- 本当は何をしたかったのか
- 修正してみよう

```ruby
[0..9].map{|i| i * 2}
```

[回答例](https://github.com/higaki/learn_ruby_kansai_69/blob/master/ex3.rb)
