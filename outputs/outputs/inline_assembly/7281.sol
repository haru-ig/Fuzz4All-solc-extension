pragma solidity ^0.8.0;
contract Solc {
 function test() public constant returns (uint c) {
   return 300;
}
}
contract inlineAssembly {
 function test() public returns (uint r) {
 uint m;
 uint n;
 assembly { m := c }
 i += r;
 assembly { n := c }
 if n >= m {
   i := iMax
 }
 return i;
 }
}
contract inlineAssembly2 {
 function test() public returns (uint r) {
   uint i;
   assembly { i := c }
   i += r;
   uint a;
   assembly { if eq(c, a) { i := iMax }}
 }
}

contract inlineAssembly3 {
 function test() public returns (uint a, uint b) {
   uint i;
   uint j;
   uint k;
   uint x = 100;
   uint y = 0;
   uint f = 0;
   assembly {
     i := c
     i := a
     a := $0

  }


  a = cmp(i, x)


   x = sub(x, f)


   uint r = sub(y, i)


   a = sub(x, 1)
   b = sub(y, 2)
 k = sub(y, 3)

 a = mul(a, x)
 b = mul(b, y)
 k = mul(k, y)



 }
}<fim_middle>contract inlineAssembly4 {
 function test() public returns (uint r) {
   uint x;
   assembly { x := 2 }
    x = sub(i, c)
   }
  }

contract inlineAssembly5 {
 bool check(uint a)
 {
  r = sub(a, 1)
 }

 uint r;
 uint x = sub(i, 15)

 if
