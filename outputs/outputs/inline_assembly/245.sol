pragma solidity ^0.8.0;
contract E5
{
    constructor (uint _x) public {
        _x += 1;
    }
    function subtract (uint _y) public returns (uint){
        return _x - 1;
    }
}
