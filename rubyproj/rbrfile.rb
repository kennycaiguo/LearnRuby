file=File.open("hello.txt","r")
if file
    content=file.sysread(1000)
    puts(content)
else
    puts("open file failed")
end