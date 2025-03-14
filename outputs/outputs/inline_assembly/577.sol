pragma solidity ^0.8.0;
contract SemanticsEquivalent {
    function testMethod() public pure returns(bytes32) {
        assembly {
            x := 0x000
            mstore(0, sub(x, 42))
            x := mul(x, 0xff)
        }
        return x;
    }
}
