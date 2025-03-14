pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract MixedContactsExample71 {
    uint a;
    uint b;
    uint c;

    constructor(uint d1, uint d2, uint d3) public {
        a = d1;
        b = d1;
        c = d1;

        c = d1;
        b = d1;
        a = d1;

        b = d1;
        a = d1;
        doSomething();
    }
    function doSomething() public {
          a = 0;
          b = a;
          c = 0;
    }
}
