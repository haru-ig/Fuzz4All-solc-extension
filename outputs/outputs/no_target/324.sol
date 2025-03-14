pragma solidity ^0.8.0;
contract ImmutableMutatedImmutable2 {
    function _immutableValue() internal pure returns (uint) {
        return 23;
    }
    uint public immutable _previousValue;
    function balance() public view returns (uint) {
        return uint(uint80(uint(uint128(_previousValue)))
            + uint(uint80(uint(uint128(_previousValue)) >> 80)))
            + (uint(uint80(uint(uint128(1<<32 - _previousValue))))
            + uint(uint80(uint80(uint(uint128(1<<32 - uint(1 << 32))))))));
    }
}
