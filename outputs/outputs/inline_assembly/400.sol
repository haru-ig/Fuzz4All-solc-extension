pragma solidity ^0.8.0;
contract M11 {
    uint public _a;
    constructor() {
        _a = 1;
    }
    function subtract() public {
        _a = _a-1;
    }
    function modify() public {
        _a = _a+_a;
    }
    function half() public {
        _a = _a+_a/2;
    }
}
