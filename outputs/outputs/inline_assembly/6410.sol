pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample37 {
    uint public i;
    uint public j;
    uint public k;
    function increaseByOneAndTen(uint a) public {
        j = a + 1;
    }
    function increaseByTenAnd10(uint c) public {
        j = j + c;
    }
    function increaseByTenAnd20(uint d) public {
        j = d + j;
    }
}
