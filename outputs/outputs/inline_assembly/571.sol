pragma solidity ^0.8.0;
contract SemanticsEquivalent {
    function testMethod() public returns(bytes32) {
        bytes32 x;
        x := add(x, 0x000);
     	return x;
    }
}
