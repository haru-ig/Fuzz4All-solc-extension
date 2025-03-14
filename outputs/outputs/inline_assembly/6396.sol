pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample29 {
    uint public i, j = 0, k = 0;
    function increaseByOneAndTen(uint d) public {
        j = j + 10;
        i = i + 1;
    }
    function increaseByTenAnd10(uint b) public {
        i = i + 1;
        c = i + 10;
    }
    function increaseByTenAnd20(uint a) public {
        i = i + 20;
        m = i + 10;
    }
    function increaseBy100And20(uint j) public {
        c = i;
        j = j + 20;
    }
    function increaseBy100And10(uint w) public {
        m = i;
        a = i + j;
    }
    function increaseBy5000And20(uint c) public {
        j = j + 20;
        x = c;
    }
}
