pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalent {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        x = 0x0102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F
        return x;
    }
}
