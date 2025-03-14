pragma solidity ^0.8.0;
contract O{
    uint constant x = 1;
    uint constant y = 2;
    function g(uint) internal pure returns (uint, uint) {
        assert(x < 2);
        return (x, y);
    }
}
