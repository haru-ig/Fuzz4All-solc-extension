pragma solidity ^0.8.0;
contract Example7NoMod
{
    function add(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        sum = x;
        sum += x + y;
        sum -= x + y;
        sum = sum + x + y;
        return x;
    }
}
