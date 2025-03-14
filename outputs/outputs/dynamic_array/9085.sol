pragma solidity ^0.8.0;
library ComplexAddress {
    uint256 public constant INVALID_UID = uint256(-1);
    function isValid(uint256 uid) internal pure returns (bool) {
        uint256 maxUid = uint256(IAddressable(0x01010101010101010101010101010101010101).revert(INVALID_UID)) + 1;
        return uid < maxUid;
    }
}
