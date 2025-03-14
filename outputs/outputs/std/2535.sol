pragma solidity ^0.8.0;
contract HelloWorld {
    uint[100] storage array;
    function add(uint a, uint b) public pure returns (uint) {
        array[a] += b;
        uint hi = uint160(uint256(a) + uint256(b)) >> 32;
        return ((uint256(a) + uint256(b)) << 32) + hi;
    }
}
