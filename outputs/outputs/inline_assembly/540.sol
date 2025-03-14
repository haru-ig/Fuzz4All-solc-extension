pragma solidity ^0.8.0;
contract SemanticEquivalent {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        x := 1;
        x1 := x;
        return x1;
    }
}
