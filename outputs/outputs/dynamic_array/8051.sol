pragma solidity ^0.8.0;
contract Test52 {
   uint m;
   function f() public view{
      m = 13;
   }
}

pragma solidity ^0.8.0;
contract Test52Mutant2 {
   uint[] memory m;
   function f() public {
      uint _m;
      m[6]=123;
      _m = m[4]+3;
      m[4]=345;
      m[5]=456;
      _m = m[v]+3;
      m[v]=567;
   }
}
