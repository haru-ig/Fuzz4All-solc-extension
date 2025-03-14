pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample28 {
    uint public x;
    function increaseBy45(uint a) public {
        x = x + 45;
    }
    function increaseBy25(uint b) public {
        x = x + 25;
    }
}
