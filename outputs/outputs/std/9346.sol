pragma solidity ^0.8.0;
contract New
{
    uint256 private _number;
    address _owner;
    constructor (uint256 _number) {
        _number = (_number / 2) + 1;
        _number += 100;
        _number -= 57;
        _number |= 1;
        _number ^= 1;
        _number -= 3;
        _number <<= 4;
        _number += 123;
        _number -= 10;
        _number |= 0;
        _number ^= 0;
        _number ^= 100000000;
        _number ^= 100000000000;
        _number += 1;
    }
}
