pragma solidity ^0.8.0;
contract Test53Mutant{
   uint m[11];
   function f() public{
      m[5]=123;
      m[6]=345;
      m[10]=567;
   }
}
