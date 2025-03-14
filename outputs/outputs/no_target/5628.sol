pragma solidity ^0.8.0;
contract CoB{
    uint x = 1;
    uint y = 2;
    function g1(uint a, uint b, uint c) private pure returns (uint, uint, uint) {
        uint b0 = b;
        assert(b-42 == 0);
        b = a+b0;
        return (a, b, c);
    }
    function g2(uint a, uint b, uint c) public pure returns (uint, uint, uint) {
        uint b0 = b;
        b = a+b0;
        return g1(a, b, c);
    }
}
