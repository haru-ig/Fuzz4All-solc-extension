pragma solidity ^0.8.0;
contract P13{
  struct B { uint00000219; 0; uint00000000; uint00000000; }
  function g() public returns(B){ return B(uint0x0611000000000000000000000000000000000000000000000000000000000000000); }
   contract A{
     address foo;
     function f() public {
       address self = foo;
       B _b1 = g();
       B _b2 = self.g();
       assert(_b1 == _b2);
     }
   }
}
