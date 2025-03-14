pragma solidity ^0.8.0;
contract Example
{
    uint x;
    function setter(uint _x) public {
        require(x == 55);
        x = 45;
    }
    function getter() view public returns (uint) {
        require(x == 55);
        return x;
    }
}
