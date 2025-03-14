pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample73 {
    uint a;
    uint b;
    uint c;
    Constructor(uint d1) public {
        a = d1;
        b = 0;
        c = 0;
        d();
    }
    function d() public{
          a = 0;
          if (a > 0) {
              uint a = ~a;
              uint b = c & b & ~c;
          }
      else {
              a = c;
          }
    }
}
