pragma solidity ^0.8.0;
contract Test
{
    uint constant uint_max = 2**256 - 1;
    uint x = 2**256 - 1;
    uint y;
    function test() public {
        y = int(x / uint_max);
    }
}
