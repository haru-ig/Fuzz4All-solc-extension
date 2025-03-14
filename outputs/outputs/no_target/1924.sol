pragma solidity ^0.8.0;
contract UintWrapper {
    uint constant X = 1;
    function x() pure public returns (uint) {
        return uint160(uint256(uint256(X) * UintWrapper.x()) / X);
    }
}
