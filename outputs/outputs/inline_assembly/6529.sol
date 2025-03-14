pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample72 {
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
          a = 0;
          if (a > 0) {
              uint b = ~a;
              uint c = c & b & ~c;
          }
          else {
              a = c;
          }
    }
}
