pragma solidity ^0.8.0;
contract InlineAssemblySemanticsEquivalentMutated {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        assembly {
            let x1 := mload(0)
            mstore(64, add(x1, 42))
            x := x1
            sstore(0, mload(64))
        }
        return x;
    }
}
