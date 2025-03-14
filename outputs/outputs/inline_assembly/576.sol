pragma solidity ^0.8.0;
contract SemanticsEquivalent {
    function testMethod() public pure {
        bytes32 x;
        assembly { x := add(x, 0x000) }
    }
}
