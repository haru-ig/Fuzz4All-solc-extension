pragma solidity ^0.8.0;
contract Example
{
    uint private y;
    uint public x = 2;
    function setter(uint _y) public {
        x = (x + _y)/2;
    }
}
