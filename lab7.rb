def task3(st)
    n = st.split(' ')
    file = File.new("f:/", "a:UTF-8")
    file.print(n[n.size()-3]+ n[n.size()-2]+n[n.size()-1]+"\n")
end
print task3("one two three four")
print task3("how many guys are in my store")
print task3("I know you are stealing")