pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample35 {
    uint public i;
    uint public j;
    uint public k;
    function increaseByOneAndTen(uint d) public {
        i = i + 1;
        j = j + 10;
    }
    function increaseByTenAnd10(uint b) public {
        k = k + 20;
    }
    function increaseByTenAnd20(uint a) public {
        k = a + k;
    }
    function increaseBy100And20(uint j) public {
        k = j + 20;
    }
    function increaseBy100And10(uint w) public {
        k = w + 10;
    }
    function increaseBy5000And20(uint c) public {
        k = c + 20;
    }
}
