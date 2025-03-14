pragma solidity ^0.8.0;
contract UintWrapper {
    uint constant X = 1;
    function y() pure public returns (uint160 x) {
        return UintWrapper.x() * X + uint160(uint256(X) * uint256(uint256(UintWrapper.x())) / X) + x;
    }
}
