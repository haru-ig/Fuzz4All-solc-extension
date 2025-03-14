pragma solidity ^0.8.0;
contract A {
    uint b = 918710609/1421910 * 10**18;
    uint constant _uint64 = 9 * 1e10;
    function mutatedBy(uint) public pure returns(uint) {
        uint a;
        a += _uint64 - uint(_uint64);
        return (uint(a - uint(uint(_uint64) * 256)) * 256) * 32;
    }
}
