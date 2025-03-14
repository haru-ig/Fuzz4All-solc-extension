pragma solidity ^0.8.0;
contract New
{
    uint256 private _number;
    constructor(uint _number) {
        _number = _number / 2 + 1;
        if (_number >= 573) {
            _number *= 2;
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
        _number ^= 159585632;
        _number += 7;
        _number *= 4;
    }
}
