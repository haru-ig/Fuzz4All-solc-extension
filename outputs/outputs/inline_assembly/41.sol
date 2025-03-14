pragma solidity ^0.8.0;
contract C is E {
    uint8 private _number;
    constructor() {
        _incrementNumber();
        _incrementNumber();
        _incrementNumber();
    }

    function _incrementNumber() internal {
        _number++;
    }

    function _incrementNumberNoEVM() internal {
        _incrementNumberB();
    }
}
