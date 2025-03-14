pragma solidity ^0.8.0;
contract Comp2 {
    uint256 private _a;
    constructor(uint32 _b) {
        _a = _b;
    }
    function increase() public {
        _a += 10;
    }
}

contract Comp1 {
    uint256 private _a;
    uint256 private _b;
    constructor(uint32 _b) {
        _a = 10;
        _b = _b % 5;
    }
    function divideByZer() public {
        _a = _a / _b;
    }
}
contract Comp30{
    uint32 a;
    constructor(uint32 _a) {
        a = _a;
    }
    function divideByZero(uint32 _a) public {
        _a + a;
    }
}
