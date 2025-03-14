pragma solidity ^0.8.0;
library O{
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b, uint c) internal pure returns (uint, uint, uint) {
        assert(b-42 == 0);
        return (a, b, c);
    }
}
