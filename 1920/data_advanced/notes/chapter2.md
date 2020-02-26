# Data Advanced: Chapter 2
* U = universe = collection of possible outputs *(eg. 1, 2, 3, 4, 5, 6 for a dice)*
    * A universe can be infinite
* Event (A) = points of interest in U *(eg. all odd numbers)*
* P = chance = numerical value for the likelyhood that an output wil happen *(eg. 3/6)*
* Complement *(same as NOT-operator)*
    * Written as A<sup>c</sup>
    * U<sup>c</sup> is always empty
* Union *(same as OR-operator)*
    * A U B
* Cutthrough *(same as AND-operator)*
    * A Ո B

`example 1`
```
A = {get >= -2}
B = {get < 1}
```
`get? NOT(A AND B)`
> alles behalve {-2 tot 1} *(-2, -1, 0)*

`get? NOT(A OR B)`
> leeg

`example 2`
```
A = 'Ann zit in de les'
B = 'Jan zit in de les'
```
`get? NOT(A AND B)`
> geen van beiden zit tegelijk in de les, of ze komen beiden niet

* Difference *(same as NOR-operator)*
    * A \ B of A Ո B<sup>c</sup>
* Disjunct events have no relations and are completely disconnected

`example 3 (p.26)`
```
U = 52
A = 4
P = 4/52
```