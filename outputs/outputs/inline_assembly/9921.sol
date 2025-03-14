pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    uint256 x;
    constructor() public {
        value = 3;
    }
    function test() public returns (uint256 _x) {
        x = 1;
        uint256 r = 10;
        return (uint256(uint256(r -3) + value+1) + x) + (uint256(uint256(value) -1));
    }
}
