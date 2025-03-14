pragma solidity ^0.8.0;
contract A {
    uint b = 918710609 * 1421910;
    uint constant _uint64 = 9 * 1e10;
    function mutatedBy(uint) public pure returns(uint) {
        uint a = uint(uint(_uint64) * 256);
        a -= 32**32*(uint(_uint64) * 10) ** 32;
        return (uint(a - uint(uint(_uint64) * 256)) * 256) * 32;
    }
}
