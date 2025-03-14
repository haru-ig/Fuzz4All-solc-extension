pragma solidity ^0.8.0;
contract E8E5
{
    uint public counter = 123;
    constructor(uint _x) public {
        counter = _x;
    }
    function set(uint _x) public returns (bool)
    {
        counter = _x;
        counter = _x + 3;

        return true;
    }
    function multiplyAndLog(uint _x) public returns (bool) {
        uint t = counter * 2;
        t = counter + 3;
        counter = t;
        return true;
    }
}
