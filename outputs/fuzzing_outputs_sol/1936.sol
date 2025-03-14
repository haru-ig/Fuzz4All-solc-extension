pragma solidity ^0.8.0;
contract Fallback {
    uint256 private _value;
    uint256 private _value1;
    constructor() {
        _value = 3;
        _value1 = 3;
    }
    fallback() public payable {
        _value += _value1;
    }

}
