pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalence {
    bytes32 constant x;
    function testMethod() public pure returns(bytes32) {
        bytes32 x1;
        assembly {
            x1 := 3
        mstore(0, x1)
            let x := mload(0)
        }
        return x;
    }
}
