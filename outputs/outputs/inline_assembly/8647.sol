pragma solidity ^0.8.0;
modifier test(uint  a){
yield;
}
contract Modul{
uint public a;
function Modul() {a = 2;}
}
contract Tester{
function test(){
Modul mod;
for(uint i =0;i<2;i++)
{
assembly{
a := a + 1
mod := Modul{a}
mod := mod.a + mod
}
}
}
}
uint main() {
Tester test;
test.test();
assert(test.a == 1);
}
```
---
