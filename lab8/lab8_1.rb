def initialize (id, title,authors,publisher,pubYear) 
    @id = id
    @title = title
    @authors=authors
    @publisher=  publisher
    @pubYear=  pubYear
    end

    def saveTofile(puth)
        file = File.new(puth, "a:UTF-8")
        file.print(@id,' ',@title,' ',@authors,' ',@pubYear,' ',@publisher +"\n")
    end
    end

    class Category
        def initialize (books, cid,cname) 
        @books = books
        @cid = cid
        @cname=cname
        end
        def saveTofile(puth)
            file = File.new(puth, "a:UTF-8")
            file.print(@cid,' ',@cname, "\t")
            @books.each do |n| 
                n.saveTofile(puth)
            end
        end
    end

Book1=Book.new(1, “aaa”, “bbb”, “ccc”, 2000)
Book2=Book.new(1, “eee”, “bbb”, “ccc”, 2000)
Book1.saveTofile(“task1Book.txt”)
Book2.saveTofile(“task1Book.txt”)
Category1=Category.new([Book1, Book2], 1, “ddd”)
Category1.saveTofile(“task1Category.txt”)