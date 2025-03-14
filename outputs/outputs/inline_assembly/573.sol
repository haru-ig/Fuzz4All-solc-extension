pragma solidity ^0.8.0;
contract SemanticsEquivalent2 {
    function testMethod() public pure returns(bytes32) {
        bytes32 x;
        assembly {
            sub(x, 0x42)
            x := mload(0)
            mstore(0, x)
        }
        return x;
    }
}
