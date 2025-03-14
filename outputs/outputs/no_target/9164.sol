pragma solidity ^0.8.0;
contract simpler_abi3 {
    function make_uint32(uint8 x) public pure returns (uint32) {
        return uint32(x);
    }
    function x() public pure returns (uint32, uint32) {
        return (uint32(1), make_uint32(0x10));
    }
}
