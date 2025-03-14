pragma solidity ^0.8.0;
contract simpler_abi4 {

    function make_uint8(uint8 x) public pure returns (uint32) {
        require(x >= 0, "negative int32");
        return uint32(x);
    }

    modifier onlyNonnegative() {
        require(make_uint8(x) >= 0, "negative int32");
        _;
    }
    function x() onlyNonnegative public pure returns (uint32, uint32) {
        return (uint32(1), make_uint8(0x10));
    }
}
