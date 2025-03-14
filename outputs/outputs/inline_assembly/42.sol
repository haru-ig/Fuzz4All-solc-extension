pragma solidity ^0.8.0;
contract C {
    uint8 private _number;
    bool private flag;

    constructor() {
        flag = true;
        _incrementNumber();
        _incrementNumber();
        _incrementNumber();
    }
    modifier incremented {
        flag =!flag;
        _;
    }
    function _incrementNumber() internal incremented {
        _number++;
    }
}
