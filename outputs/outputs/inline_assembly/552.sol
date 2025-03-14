pragma solidity ^0.8.0;
contract MutatedInlineAssemblySemanticEquivalent {
    bytes32 x1;

    function testMethod0() public {
        x1;
        assembly {
            mstore(x1, 0xffffcafebabe)
        }
    }

    function testMethod1() public {
        bytes32 temp;
        assembly {
            mstore(x1, 0xffffcafebabe)
            temp := mload(x1)
            mstore(x1, x1)
            mstore(x1, temp)
        }
    }

    function testMethod2() public {
        assembly {
            let x1 := mload(0)
            mstore(0, x1)
            mstore(x1, 0xffffcafebabe)
        }
    }
}
