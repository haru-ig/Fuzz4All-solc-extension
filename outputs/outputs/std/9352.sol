pragma solidity ^0.8.0;
contract Mover
{
    uint256 _total_tokens = 0;
    uint private _number;
    event Create(address owner);
    event Destroy(address owner);
    constructor (uint256 _number) {
        _number = (_number / 2) + 1;
        _number += 100;
        _number -= 57;
        _number |= 128;
        _number += 3;
        _number >>= 4;
        _number += 123;
        _number -= 10;
        _number ^= 0;
        _total_tokens += _number;
    }
    function change(uint256 _number) {
        if(_number > 0)
        {
            _number = (_number / 2) + 1;
            _number += 100;
            _number -= 57;
            _number |= 128;
            _number += 3;
            _number >>= 4;
            _number += 123;
            _number -= 10;
            _number *= 7;
            _total_tokens -= _total_tokens;
            _total_tokens += _number;
            _number ^= 0;
            _total_tokens += _number;
            _number += 1;
            _number &= 119082154;
            _number <<= 4;
            _number ^= 0;
            _total_tokens += _number;
            _number ^= 0;
            _number |= 2088979372;
            _total_tokens -= _total_tokens;
            _total_tokens += _total_tokens;
            _number <<= 2;
            _number /= 4;
            _number *= 5;
            _number -= 1;
            _total_tokens += _number;
            _number <<= 1;
            _number *= 13;
            _number -= 76;
            _number -= 3;
            _number >>= 4;
            _number += 123;
            _number *= 4;
            _number += 2;
            _number <<= 3;
            _number /= 13;
            _number *= 62;
            _number += 1;
            _number <<= 3;
            _number += 2;
            _number <<= 2;
            _number -= 3;
            _number ^= 0;
            _number <<= 2;
            _number = _number << 3;
            address payable temp = payable(
