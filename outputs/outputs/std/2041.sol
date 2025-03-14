pragma solidity ^0.8.0;
contract Mutated {
   struct A {
       int a;
   }
   function set(A storage self, int _val) public {
      self.a = _val;
    }
}
