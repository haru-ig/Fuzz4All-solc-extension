pragma solidity ^0.8.0;
contract UintMutator {
    uint constant X = 3;
    function x() internal pure returns (uint) {
        return uint160(uint{0}- uint256(uint{0} + uint256(uint{0} + uint{0}) + uint{0} + uint{0}) / X);
    }
}
contract UintWrapper {
    uint constant X = 1;
    function x() public pure returns (uint) {
        return uint160(uint256(uint256(X) * UintMutator.x()) / X);
    }
}
