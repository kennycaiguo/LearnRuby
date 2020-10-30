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
# ruby中的模块
您可以在类方法名称前面放置模块名称和一个点号来调用模块方法，您可以使用模块名称和两个冒号来引用一个常量。

实例
#!/usr/bin/ruby
 
# 定义在 trig.rb 文件中的模块
 
module Trig
   PI = 3.141592654
   def Trig.sin(x)
   # ..
   end
   def Trig.cos(x)
   # ..
   end
end
我们可以定义多个函数名称相同但是功能不同的模块：

实例
#!/usr/bin/ruby
 
# 定义在 moral.rb 文件中的模块
 
module Moral
   VERY_BAD = 0
   BAD = 1
   def Moral.sin(badness)
   # ...
   end
end
就像类方法，当您在模块中定义一个方法时，您可以指定在模块名称后跟着一个点号，点号后跟着方法名。

Ruby require 语句
require 语句类似于 C 和 C++ 中的 include 语句以及 Java 中的 import 语句。如果一个第三方的程序想要使用任何已定义的模块，则可以简单地使用 Ruby require 语句来加载模块文件：

语法
语法
require filename
在这里，文件扩展名 .rb 不是必需的。

实例
$LOAD_PATH << '.'
 
require 'trig.rb'
require 'moral'
 
y = Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERY_BAD)
在这里，我们使用 $LOAD_PATH << '.' 让 Ruby 知道必须在当前目录中搜索被引用的文件。如果您不想使用 $LOAD_PATH，那么您可以使用 require_relative 来从一个相对目录引用文件。

注意：在这里，文件包含相同的函数名称。所以，这会在引用调用程序时导致代码模糊，但是模块避免了这种代码模糊，而且我们可以使用模块的名称调用适当的函数。

Ruby include 语句
您可以在类中嵌入模块。为了在类中嵌入模块，您可以在类中使用 include 语句：

语法
include modulename
如果模块是定义在一个单独的文件中，那么在嵌入模块之前就需要使用 require 语句引用该文件。

实例
假设下面的模块写在 support.rb 文件中。

module Week
   FIRST_DAY = "Sunday"
   def Week.weeks_in_month
      puts "You have four weeks in a month"
   end
   def Week.weeks_in_year
      puts "You have 52 weeks in a year"
   end
end
现在，您可以在类中引用该模块，如下所示：

实例
#!/usr/bin/ruby
$LOAD_PATH << '.'
require "support"
 
class Decade
include Week
   no_of_yrs=10
   def no_of_months
      puts Week::FIRST_DAY
      number=10*12
      puts number
   end
end
d1=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months
这将产生以下结果：

Sunday
You have four weeks in a month
You have 52 weeks in a year
Sunday
120
Ruby 中的 Mixins
在阅读本节之前，您需要初步了解面向对象的概念。

当一个类可以从多个父类继承类的特性时，该类显示为多重继承。

Ruby 不直接支持多重继承，但是 Ruby 的模块（Module）有另一个神奇的功能。它几乎消除了多重继承的需要，提供了一种名为 mixin 的装置。

Ruby 没有真正实现多重继承机制，而是采用成为mixin技术作为替代品。将模块include到类定义中，模块中的方法就mix进了类中。

让我们看看下面的示例代码，深入了解 mixin：

实例
module A
   def a1
   end
   def a2
   end
end
module B
   def b1
   end
   def b2
   end
end
 
class Sample
include A
include B
   def s1
   end
end
 
samp=Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1
模块 A 由方法 a1 和 a2 组成。
模块 B 由方法 b1 和 b2 组成。
类 Sample 包含了模块 A 和 B。
类 Sample 可以访问所有四个方法，即 a1、a2、b1 和 b2。
因此，您可以看到类 Sample 继承了两个模块，您可以说类 Sample 使用了多重继承或 mixin 。
