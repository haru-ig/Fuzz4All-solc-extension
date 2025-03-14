pragma solidity ^0.8.0;
contract MutatedInlineAssemblySemanticEquivalent {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        assembly {
            let x := mload(0)
            mstore(0, x)
        }
        return x;
    }
}

pragma solidity ^0.8.0;
contract ComplementaryMutation {
    function testMethod() public pure returns(bytes32) {
        bytes memory x = "x";
        assembly {
            let x0 := mload(x)
            ret x0
        }
    }
}
