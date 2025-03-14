pragma solidity ^0.8.0;
contract Comp4 {
    uint256 _a;
    constructor() public {
        _a = 0;
    }
    function add(uint _b) public {
        _a = _a + _b;
    }
    function subtract(uint _b) public {
        _a = _a - _b;
    }
}
