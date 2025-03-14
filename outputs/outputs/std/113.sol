pragma solidity ^0.8.0;
abstract contract AncestorsProgram {
    function _min_address_uint_32(address x, uint a, uint32 b) public pure returns (address) {
        if (x > address(uint32(uint256(a) + uint256(b)))) { return address(uint256(a) + uint256(b)); }
        return x;
    }
}
