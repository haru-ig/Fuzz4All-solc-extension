pragma solidity ^0.8.0;
contract FallbackStorage {
    uint private _value;
    uint private _value1;
    constructor() {
        _value = 3;
        _value1 = 3;
    }
    receive() external payable {
        _value += _value1;
    }
}
