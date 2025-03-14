pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample36 {
    uint public i;
    uint public j;
    uint public k;
    function increaseByOneAndTen(uint d) public {
        j = j + 1;
    }
    function increaseByTenAnd10(uint b) public {
        j = b + j;
    }
    function increaseByTenAnd20(uint a) public {
        j = a + j;
    }
    function increaseBy100And20(uint j) public {
        j = j + 20;
    }
    function increaseBy100And10(uint w) public {
        j = w + 10;
    }
    function increaseBy5000And20(uint c) public {
        j = c + 20;
    }
}
