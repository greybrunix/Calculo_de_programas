type Call = Int


store' :: Call -> [Call] -> [Call]
--store' c l = take 10 (store c l)
store' c = take 10 . (c:) . filter (/= c)

store :: Call -> [Call] -> [Call]
store c l = c : filter (/= c) l

store'' :: Call -> [Call] -> [Call]
store'' c l = take 10 (c: filter (/= c) l)

id :: a -> a
id a = a

