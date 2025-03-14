pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalent {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        assembly {


            let x1 := mload(0)


            mstore(0, x1)
            x := x1
        }
        return x;
    }
}
