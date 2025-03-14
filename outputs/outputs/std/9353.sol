pragma solidity ^0.8.0;
contract Moddled
{
    uint256 private _number;
    address _owner;
    constructor (uint256 _number, address _owner) {
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
    function setNumber(uint256 _number) public
    {
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

pragma solidity ^0.8.0;
contract ModdledByAdd
{
    uint256 private _number;
    address _owner;
    Constructor(uint256 _number, address _owner) public {
        _number = (_number + 1) * 10;
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
    function setNumber(uint256 _number) public
    {
        _number = (_number + 1) * 10;
        _number += 1
