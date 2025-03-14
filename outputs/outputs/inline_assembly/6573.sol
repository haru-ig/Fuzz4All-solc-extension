pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83 {
    uint256 a;
    constructor() {
        uint256 b = (uint256(uint32(uint64(uint256(uint128(uint256(uint128(uint32(uint64(uint256(uint256(uint128(uint512(uint256(uint32(uint64(uint256(uint256(uint128(uint64(uint256(uint256(uint128(uint64(uint40))))))))))))))))))))))))))));
    }
}
