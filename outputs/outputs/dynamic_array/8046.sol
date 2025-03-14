pragma solidity ^0.8.0;
contract Test51Mutant {
   function f() public{
      uint[] memory x = new uint[](6);
      x[1]=123;
      x[5]=234;
      x[4]=345;
      x[4]=456;
      x[4]=567;
   }
}
contract Test70Mutant{
   function f() public{
      uint[] memory x = new uint[](0);
   }
}
