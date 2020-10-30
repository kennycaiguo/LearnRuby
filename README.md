# LearnRuby
学习ruby(选修)
# ruby 常用字符串操作
 打开ruby命令行交互环境
1.cmd
2. irb                                                                                      
irb(main):007:0> "hello".size                                                             => 5                                                                                        => 5
irb(main):007:0> "hello".reverse                                                          => "olleh"
irb(main):007:0> "hello".upcase                                                           => "HELLO"
irb(main):011:0> "hello".index('o')                                                       => 4

irb(main):014:0> "HELLO".downcase                                                       => "hello"
irb(main):014:0> "HELLO".replace("world")                                               => "world"
irb(main):014:0> "Hello World".split(' ')                                               => ["Hello", "World"]
irb(main):017:0> "Hello World".chars                                                    => ["H", "e", "l", "l", "o", " ", "W", "o", "r", "l", "d"]
irb(main):018:0> "Hello World".count('o')                                               => 2
irb(main):021:0> "Hello World".each_char                                                => #<Enumerator: "Hello World":each_char>

irb(main):022:0> "Hello World".empty?                                                   => false
irb(main):024:0> "Hello World".delete(" World")                                         => "He"
irb(main):025:0> "Hello World".delete("Hello")                                          => " Wrd"
irb(main):026:0> "Hello World".delete_prefix("Hello")                                   => " World"


irb(main):032:0> "i love"+""+"sexy girls"    //可以“+”但是不能“-”                                            => "i lovesexy girls"
irb(main):036:0>  "i love sexy girls"*3    //重复输出3次                                  => "i love sexy girlsi love sexy girlsi love sexy girls"
### 在ruby中字符串和数字不能相加（Java可以，因为Java有转换机制）
### 注意：ruby替换字符串的方法有点特别，replace只能替换整个字符串
irb(main):030:0> "Hello World".tr('l','*')                                               => "He**o Wor*d"

要仅使用另一个表达式替换第一次出现的模式，请使用sub方法

"string ring".sub('r', 'l') # => "stling ring"
如果您想用该表达式替换所有出现的模式，请使用gsub
"string ring".gsub('r','l') # => "stling ling" 

# ruby 循环
## 1.while..do..end
$i = 0
$sum = 0
while $i < 10 do
  $i+=1
  $sum+=$i*2
  puts("i=#$i,sum=#$sum")
end
puts("sum=#$sum")
结果：
i=1,sum=2
i=2,sum=6
i=3,sum=12
i=4,sum=20
i=5,sum=30
i=6,sum=42
i=7,sum=56
i=8,sum=72
i=9,sum=90
i=10,sum=110
sum=110

## 2.while 循环变种
 $i = 0
$sum = 0
begin
  $i+=1
  $sum+=$i*2
  puts("i=#$i,sum=#$sum")
end while $i<5
puts("sum=#$sum")
结果：
 i=1,sum=2
i=2,sum=6
i=3,sum=12
i=4,sum=20
i=5,sum=30
sum=30 $i+=1
  $sum+=$i*2
  puts("i=#$i,sum=#$sum")
## 2.until循环，只有但条件<em>不</em>满足的时候才执行代码块
 $i = 0
$sum = 6
until $i>$sum do
  $i+=1
  puts("i=#$i")
结果：
i=1
i=2
i=3
i=4
i=5
i=6
i=7 //当i=6时条件仍然满足，所以$i=$i+1 又执行了一次

## until循环变种
$i = 0
$num = 5
begin
   puts("在循环语句中 i = #$i" )
   $i +=1;
end until $i > $num

## 4. for 循环
$sum=0
for i in 0..5 //注意，跟rust不同的是，这里也包含5，rust是不包含5
  $sum +=i
  puts("sum=#$sum")

end
结果：
sum=0
sum=1
sum=3
sum=6
sum=10
sum=15 //

## 5.(expression).each do |variable[, variable...]| code end
$total=0 
(1..6).each do |i|
  $total +=i
  puts("total=#$total")
end
结果：
total=1
total=3
total=6
total=10
total=15
total=21
# ruby条件判断
#ruby条件语句if
$name="Hello"
if $name.size<5
  puts("too short")
elsif  $name.size>5
  puts("too long")
else
  puts("ok")
end
结果：ok
# ruby定义方法
# Ruby定义方法
## 实例1
def test(a1="ruby",a2="python")
  puts("first language:#{a1},second language:#{a2}")
end
test
结果：first language:ruby,second language:python
test("c++","java")
结果:
first language:c++,second language:java //ruby中方法的参数是可以有默认值的，如果不输入就使用默认值，go语言不行

## 实例2
# 从方法返回值 Ruby 中的每个方法默认都会返回一个值。这个返回的值是最后一个语句的值。例如：
def add()
  a1=5
  a2=10
  $sum=a1+a2
end

$total = add
puts("total=#$total")
结果：total=15
