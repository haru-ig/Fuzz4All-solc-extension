pragma solidity ^0.8.0;
contract MultipleReturn2x0 {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn2() public returns (uint) {
        num = 2;
        uint x = 1;
        x = num;
        return num;
    }
}
