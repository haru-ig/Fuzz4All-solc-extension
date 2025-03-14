pragma solidity ^0.8.0;
contract Comp3 {
    uint256 private _a;
    constructor(uint32 _b) {
        _a = _b;
    }
    function decrease() public {
        _a -= 10;
    }
}
