pragma solidity ^0.8.0;
contract Example
{
    uint public x;
    function setter(uint _x) public {
        x *= _x; x++;
    }
}
