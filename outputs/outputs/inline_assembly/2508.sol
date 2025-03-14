pragma solidity ^0.8.0;
contract Comp3 {
    uint256 public _a;
    constructor(uint32 _b) {
        _a = 0;
    }
    function increase() public {
        _a += 1;
    }
}
