pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalent {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        x = 0x600060405234806000357c01000000000000000000000000000000000000000;
        x += 4;
        return x;
    }
}
