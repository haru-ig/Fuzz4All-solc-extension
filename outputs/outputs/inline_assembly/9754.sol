pragma solidity ^0.8.0;
contract MutatedYulContract3 {
    uint public x;

    uint constant v = 42;
    assembly {
      x := v
    }
}

`
