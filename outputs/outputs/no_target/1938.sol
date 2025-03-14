pragma solidity ^0.8.0;
contract UintWrapper {
    uint constant X = 0;
    function x() pure public returns (uint) {
        unchecked {
            if (uint256(uint256(X) * UintWrapper.x()) / X == X) {
                return uint160(uint256(uint256(X) * UintWrapper.x()) / X);
            }
        }
    }
}
