pragma solidity ^0.8.0;
contract SyntaxEquivalency {
    function testMethod() public pure {
        bytes32 x;
        assembly {
            mstore(0, '0x1234')
            x := sub(mload(0))
        }
    }
}
