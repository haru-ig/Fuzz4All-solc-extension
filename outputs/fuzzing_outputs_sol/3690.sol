pragma solidity ^0.8.0;
contract Example6NoMod
{
    function add(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        sum = x;
        sum = x + y;
        sum += x + y;
        x = x + y;
        return x;
    }
}

contract Example7 {
    function add10And11Plus(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        sum += x;
        sum += y;
        x = x + y + sum;
        x = x + y + sum;
        return x;
    }
}
