pragma solidity ^0.8.0;
contract A {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, uint b, uint c) internal pure returns (uint, uint, uint) {
        assert(b*2 + c == O.x);
        uint, uint, uint x = o.g(a, b, c);
        return (x, y, x);
    }
}
