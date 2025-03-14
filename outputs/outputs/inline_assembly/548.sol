pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalentMutated {
    bytes32 x = 100;


    function testMethod() public {
        bytes32 oldX;
        assembly {
            mstore(0, x)
            oldX := x
        }
        x = 200;
        assert(oldX == x);
    }
}
