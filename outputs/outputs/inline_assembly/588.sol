pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    function testMethod() public pure {
        bytes32 y;
        assembly {
            x := add(y, 0x01)
            y := add(x, 0x01)
        }
    }
}
