pragma solidity ^0.8.0;
contract EquivalentInlineAssembly {
    function testMethod() public pure {
        assembly {
            mstore(0, 1)
        }
    }
}
