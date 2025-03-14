pragma solidity ^0.8.0;
contract A is B {
    uint8 public _number;
    constructor() {
        _number = 0;
    }

    function _decrementNumberB() private {
        _number -= 1;
    }
}
