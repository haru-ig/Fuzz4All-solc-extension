pragma solidity ^0.8.0;
contract Mutated6{

    address[1] public array;
    uint _x;
    uint _y;
    uint _z;
    uint[5] public arrayx;
    uint x = 1;
    uint[5] public arrayx1;
    uint[] public array11;
    uint[] public array22;
    uint[] public array33;
    uint[] public array44;
    uint public a;
    uint public _y;
    uint c;
    constructor() public{
        arrayx[3] = 1;
    }
    function mutated114550() public returns (uint) {
        array[0]++;
        array[0] = 1;
        a++;
        while (_y >= a)
            {
                c = _y;
                _y--;
                a++;
            }
        _x += _y;
        return array[0];
    }
    function mutated1145501() public returns(uint) {
        arrayx[0] += 1;
        array[0]++;
        return array[0];
    }
    function mutated22114550() public
