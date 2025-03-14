pragma solidity ^0.8.0;
contract New
{
    uint256 private _number;

    constructor (uint256 _number) {
        if (_number > 0) {
            _number--;
        }
        _number = (_number / 2) + 1;
        if (_number < 573) {
            _number = _number * 2;
        }
        _number++;
        _number--;
        _number >>= 1;
        _number <<= 1;
        _number >>= 1;
        _number ^= 1;
        _number &= 1;
        _number -= 32;
        _number |= 1;
        _number ^= 100000000;
        _number ^= 100000000000;
        _number += 123;
        _number -= 100;
        _number &= 1;

    }
}
