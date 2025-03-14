pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample36 {
    uint public x;
    uint public z;
    function increaseByTwoAndTen(uint a) public {
        x = a + 2;
        z = z + 10;
    }
    function increaseByTenAnd20(uint b) public {
        x = b + 20;
        z = z + 20;
    }
}
