-- Ficha 1

-- (f.g) x = f ( g x )
-- g: A -> B
-- f: B -> C
-- 1.a)

-- f x = 2*x AND g x = x+1
-- f . g $ x = f(g x) = f( x+1) = 2*(x+1)

-- point free f  = succ
-- point wise f x =  x + 1

-- point wise g x  =  2*x
-- point free g = 2*

-- f =  succ AND g x = 2*x
-- f.g $ x = f(g x) = f(2*x) = succ (2*x) = 2*x + 1 

-- f.g = null . (2*) 

-- f = succ AND g = length
-- f . g = f(length) = succ . length          f.g :: [a] -> Int

-- g (x,y) = x + y AND f = succ . (2*)
-- f . g $ (x,y) = f( g (x,y)) = f(x+y) = succ . (2*) (x+y) = 2* (x+y) + 1

-- f x = g x -> f = g
-- f.g = succ . (2*) . (uncurry (+))
-- g ( x,y ) = x+y = (+) x y = uncurry (+) (x,y) = uncurry (+)

-- uncurry :: (a->b->c) -> (a,b) -> c
-- uncurry k (x,y) = k x y

-- curry k x y = k (x,y)

-- flip k x y = k y x

-- 1b)

-- (f.g) . h = f . (g.h)
-- f.g . h x = f .  g.h x (igualdade extencional 71)
-- (f.g)(hx) = f(g.h $ x) (ref -comp 72)
-- f ( g( hx)) = f(g(hx)) (ref comp 72)
-- pela reflexividade da igualdade TRUE

--1c

-- id :: a -> a id x = x

-- Prove que f . id = succ . 2* $$ 5id . f = f for any f
-- f.id $ x  <-------
-- f (id x) (72) 
-- f x (73)    <------
-- id (f x) (73)
-- id . f (72)  <-----
-- 71 e transitividade da igualdade THEN f . id = id . f = f 

-- 2
-- f : A -> B g: A -> C
-- <f,g> x = (fx, g)

-- fxg ( ya, yc)
-- <f.pi1, g.pi2>(ya,yc)   (10)
-- ((f.p1) (ya,yc) , (g.pi2) (ya,yc)) (76
-- (f(pi1(ya,yc)),g(pi2(ya,yc))) (72)
-- (f ya, g yc) (79)

-- 2 b
--pi1 . (fxg) = f. pi1
-- pi1 . (f.g) (x,y) = f.pi1  72
-- 77
-- 79

-- prove idxid = id
-- id x id
-- <id.pi1, id.pi2> (10)
-- <pi1,pi2>(1)
-- id (8) transitividade da igualdade

-- prove that f x g . (h x k) = f . h x g . k

-- 3 AxB     BxA       AxB
      AxB

 B    BxA      A

 A    AxB     B

-- 4
f = <pi1.pi1, pi2xid>
       (AxB) x C

  A   A x (BxC)    BxC

  
(AxB)xC    (DxE) x F
 
AxB            E x F

A

-- 5
(id x pi2) . <id x pi2, id x pi1> . g = id

A x (C x B) 
