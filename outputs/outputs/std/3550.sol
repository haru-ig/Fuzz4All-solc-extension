pragma solidity ^0.8.0;
library Test2 {
    function toUInt(uint a) internal pure returns (uint8) {
        return uint8(2^a);
    }
    function fromInt(int a) internal pure returns (uint8) {
        return uint8(uint(a));
    }
}
