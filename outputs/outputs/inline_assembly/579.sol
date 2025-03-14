pragma solidity ^0.8.0;
contract SemanticsEquivalent2 {
    function testMethod() public pure returns(address) {
        uint x;
        assembly {
            mstore(0, add(x,42))
            x := add(x, 0x000)
        }
        return address(uint(x));
    }
}
