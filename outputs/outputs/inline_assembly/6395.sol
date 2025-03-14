pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample30 {
    uint256 public i = 0;
    uint256 public j = 0;
    function increaseByOneAndTen(uint d) public {
        i = 1 + i;
        j = j + d;
    }
    function increaseByTenAnd10(uint b) public {
        j = j + 2 * b;
    }
    function increaseByTenAnd20(uint a) public {
        j = j + 2 * a;
    }
    function increaseBy100And20(uint j) public {
        j = j + 2 * j;
    }
    function increaseBy100And10(uint w) public {
        j = j + 5 * w;
    }
    function increaseBy5000And20(uint c) public {
        j = j + c * 2;
    }
}
