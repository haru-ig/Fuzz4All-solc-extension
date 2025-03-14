pragma solidity ^0.8.0;
contract UintClamping {
    uint constant X = 0;
    uint constant X_MAX = 1 ** 256 * 80;
    function x() pure public returns (uint) {
        unchecked {
            uint x = uint256(uint256(X) * UintClamping.x()) / X;
            require(x >= 0 && x < X_MAX, "Clamped x is out of bounds");
            return uint160(x * UintClamping.x());
        }
    }
}
