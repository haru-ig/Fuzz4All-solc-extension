pragma solidity ^0.8.0;
contract SemanticsNotEquivalent {
    function testMethod() public pure {
        bytes32 x;
        assembly {
            mstore(0, add(x, 42))
            x := add(x, 0x00000)
        }
    }
}
