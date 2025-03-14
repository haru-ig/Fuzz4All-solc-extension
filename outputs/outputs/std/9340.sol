pragma solidity ^0.8.0;
contract New
{
    uint256 private _number;
    constructor (uint256 _number) {
        _number = (_number / 2) + 1;
        _number = _number * 2;
        _number = _number - 1;
        if (_number < ( 0 << 7)) {
            _number = ( _number << (7 * 60)) - ( _number >> 60*7);
        }
        while (_number > ( ( (uint256(0) >> (256 * 64)) - _number ) % 2401 )) {
            uint256 _0 = ( _number >> (256 * 59)) + _number;
            if (_0 <= _number) {
                _number = _0;
            }
        }
        while ( _number!= 2400 ) {
            _number--;
        }
    }
}
