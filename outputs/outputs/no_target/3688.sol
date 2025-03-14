pragma solidity ^0.8.0;
contract G {
   event E();
   uint i;
   uint y = 1;
   function y() public view returns (uint) {
     return i;
   }
   modifier foo {
     i = 1; y = 2; _;
   }
   function foo() private foo foo(10) returns (int z) {}
   function a() public {
     emit E();
     foo();
   }
   function x() public {
     if(msg.data.length < 1) emit E();
   }
}
