pragma solidity ^0.8.0;
contract SemanticsEquivalent {
    function testMethod() public pure {
        uint y;
        assembly {
            y := 2**256
            y := add(y, 64)
            nop()
        }
    }
}
