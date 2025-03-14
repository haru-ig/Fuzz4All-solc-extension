pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalent2 {
    function testMethod2() public pure {
        bytes32 x;
        assembly {
            mstore(0,0xcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcdc)
            let x1 := mload(0)
            x := x1
        }
    }
}
