pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample73 {
    uint a;
    uint b;
    uint c;
    constructor(uint d1) public {
        a = d1;
        b = 0;
        c = 0;
        doSomething();
    }
    function doSomething() public {
         doSomethingElse();
         uint c = c & a & b & ~c;
    }
    function doSomethingElse() public {
          b = a;
          c = 0;
    }
     uint d;
     uint i;
      function f() public{
          uint j;
          for (i = 0; i < b; i++) {
           uint j = ~a;
           for (j = ~d; j < b; j++) {
               uint j = c & ~(a & c);
             }
          }
        }
    uint g;
}
