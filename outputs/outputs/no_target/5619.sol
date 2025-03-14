pragma solidity ^0.8.0;
contract CoA{
    uint x = 1;
    uint y = 2;
    function g1(uint a, uint b, uint c) private pure returns (uint, uint, uint) {
        assert(b-42 == 0);
        return (a, b, c);
    }
    function g2(uint a, uint b, uint c) public pure returns (uint, uint, uint) {
        return g1(a, b, c);
    }
}
