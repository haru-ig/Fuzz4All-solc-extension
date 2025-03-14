pragma solidity ^0.8.0;
contract A {
    uint constant  _uint64 = 9 * 1E10;
    uint constant  _uint32 = 16**32;
    function mutated(uint) public pure returns (uint) {
        uint a = (uint(_uint64) * 16) - (uint(_uint64) * 10) ** 32;
        uint b = (a * 32);
        uint c = (uint(uint(a * 32) * 10) ** 32);
        return ((b + c) * 16) + _uint32;
    }
}
