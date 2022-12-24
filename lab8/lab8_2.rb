class Engine 
    def start
    print "Поїхали"
    end

    end
    class DieselEngine < Engine 
        def start
            print "дрдрдр"
        end
    end
    
    class InternalEngineCombustion < Engine 
        def start
            print "пихпихпих"
        end
    end

    class TurbojetEngine < Engine
        def start
            print "Ввввжжжжжж"
        end
    end