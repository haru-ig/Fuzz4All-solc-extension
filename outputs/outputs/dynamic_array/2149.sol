pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_8{
    function test() public pure returns (bool) {
        uint8 x = uint8(uint16(uint256(uint160(uint64(uint32(uint(uint(uint64(uint8(uint16()))))))))))) + uint8(test());
        return x > test();
    }
}
