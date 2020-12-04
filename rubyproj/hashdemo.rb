scores={"jack"=>90,"Mary"=>85,"raymond"=>99,"yordy"=>60} #创建一个hash

scores.each do |key,value|
    print key ,":", value
    if value>=90
        puts("优秀")
    elsif value>=85
        puts("良好")
    elsif value>=60
        puts("及格")
    end
end

