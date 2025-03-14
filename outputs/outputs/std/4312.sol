pragma solidity ^0.8.0;
contract Mutate
{
    uint x;
    uint y;
    uint z;
    function Mutate(uint z, uint y) public {
        x = 0xffffffffffffffff < x + y + z? x : y;
        y = 0xffffffffffffffff < x + y + z? y : x;
        z = 0xffffffffffffffff < x + y + z? x : y;
    }
}
