pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalentMutatedMutated {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        bytes32 x1;
        assembly {
            let x2 := mload(0)
            mstore(0, and(x2, not(1)))
            x := x2
            x1 := mload(0)
        }
        return x;
    }
}
