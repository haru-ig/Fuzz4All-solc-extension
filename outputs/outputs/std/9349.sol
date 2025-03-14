pragma solidity ^0.8.0;
contract New
{
    uint256 private _number;
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
    uint256 public returnVar;
}
pragma solidity ^0.8.0;
contract New
{
    uint256 private _number;
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
    function divOne() public {

        uint256 a = new New(10).divOne();
    }
    function doDivOne() public {

        New myContract = new New(3);

        myContract.divOne();
    }
    function divTwo() public {
        uint256 b = divZero();
        uint256 c = divZero();
        uint256 ab = divOne();
        uint256 bc = divOne();
        uint256 abc = divTwo();
        uint256 abcd = divFour();
        uint256 abcdw = divFourWithWord();
        uint256 x = divOne();
        uint256 zero = Divisor.divZero();
    }
}
