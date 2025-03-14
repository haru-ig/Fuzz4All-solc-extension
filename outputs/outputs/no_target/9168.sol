pragma solidity ^0.8.0;
contract mutated_abi3 {
    modifier checked(uint32 x) {
        require(make_uint32(x) == x);
        _;
    }
    function x() public pure returns (uint32) {
        return uint32(1);
    }
    function x2() public pure returns (uint32) {
        uint32 x;
        checked(x);
        return x;
    }
}
