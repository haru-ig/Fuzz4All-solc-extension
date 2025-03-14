pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
    function testMethod() public pure {
        bytes32 x;
        assembly {
            mstore(0, add(x, 0x000))
            mstore(0, add(x, 0x001))
        }
    }
}
