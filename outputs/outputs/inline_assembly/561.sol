pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalentMutated {
    bytes32 x;
    function testMethod() internal pure returns(bytes32) {
        x = mload(0);
        assembly {
            let x1 := add(x, 1);
            mstore(0, x1)
            x := x1
        }
        return x;
    }
}
