pragma solidity ^0.8.0;
contract UintWrapper {
    uint constant X = 0;
    function to_uint() pure public returns (uint) {
        return uint(uint256(uint256(X) * UintWrapper.x()) / X);
    }
    function from_uint() pure public returns (uint) {
        unchecked {
            uint x = uint(uint256(uint256(X) * UintWrapper.x()) / X);
            return uint160(x * UintWrapper.x());
        }
    }
}
