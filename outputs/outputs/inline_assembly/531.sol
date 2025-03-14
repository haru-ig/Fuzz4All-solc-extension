pragma solidity ^0.8.0;
contract InlineAssemblySemantic {
    function testMethod() public pure {
        assembly {
            mstore0(0, 0, 1)
        }
    }
}
