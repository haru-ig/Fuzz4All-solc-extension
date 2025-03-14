pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    function testMethod() public pure {
        bytes32 x;
        assembly {
            mstore(0, add(x, 0x000))
            x := add(x, 0x000)
        }
    }
}
