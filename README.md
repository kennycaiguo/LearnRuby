# LearnRuby
学习ruby(选修)
# ruby 常用字符串操作
 打开ruby命令行交互环境
1.cmd
2. irb                                                                                      
irb(main):007:0> "hello".size                                                               => 5                                                                                        => 5
irb(main):007:0> "hello".reverse                                                         => "olleh"
irb(main):007:0> "hello".upcase                                                           => "HELLO"
irb(main):011:0> "hello".index('o')                                                       => 4

irb(main):014:0> "HELLO".downcase                                                   => "hello"
irb(main):014:0> "HELLO".replace("world")                                         => "world"
irb(main):014:0> "Hello World".split(' ')                                               => ["Hello", "World"]
irb(main):017:0> "Hello World".chars                                                  => ["H", "e", "l", "l", "o", " ", "W", "o", "r", "l", "d"]
irb(main):018:0> "Hello World".count('o')                                           => 2
irb(main):021:0> "Hello World".each_char                                          => #<Enumerator: "Hello World":each_char>

irb(main):022:0> "Hello World".empty?                                              => false
irb(main):024:0> "Hello World".delete(" World")                                => "He"
irb(main):025:0> "Hello World".delete("Hello")                                   => " Wrd"
irb(main):026:0> "Hello World".delete_prefix("Hello")                        => " World"

#注意：ruby替换字符串的方法有点特别，replace只能替换整个字符串
irb(main):030:0> "Hello World".tr('l','*')                                               => "He**o Wor*d"

要仅使用另一个表达式替换第一次出现的模式，请使用sub方法

"string ring".sub('r', 'l') # => "stling ring"
如果您想用该表达式替换所有出现的模式，请使用gsub

"string ring".gsub('r','l') # => "stling ling" 
