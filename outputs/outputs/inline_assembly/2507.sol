pragma solidity ^0.8.0;
contract Comp4 {
    uint256 public _a;
    constructor(uint32 _b) {
        _a = block.timestamp;
    }
    function increase() public {
        _a += 2;
    }
}
