pragma solidity ^0.8.0;
contract TestUint {
    UintWrapper constant W = 1;
    uint constant X = 2;
    function f() public {
        uint128 p_ = uint128(uint256(uint256(W) * UintWrapper.x()) / X);
        uint128 q_ = uint128(uint256(uint256(W) * W) / X);
        uint128 r_ = uint128(uint256(W) * W / X);
    }
}
