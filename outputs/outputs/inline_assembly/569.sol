pragma solidity ^0.8.0;
contract SemanticsEquivalent {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        assembly {
            mstore(0, add(x,42))
            x := add(x, 0x000)
        }
        return x;
    }
}
