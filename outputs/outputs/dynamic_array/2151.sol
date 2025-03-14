pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_9{
    function test() public pure returns (bool) {
        bytes calldata bytesArr = hex'abcdef';
        (uint256 bytesArrayLength, uint256 _bytesArrayElementLength) = abi.decode(bytesArr, (uint256, uint256));
        return true;
    }
}
