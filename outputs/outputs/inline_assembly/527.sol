pragma solidity ^0.8.0;
contract InlineAssembly {
    function testMethod() public pure {
        assembly {
            mstore(0, 1)
        }
    }
}
