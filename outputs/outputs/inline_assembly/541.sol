pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalent {
    function testMethod() public pure returns(uint) {
        uint x;
        assembly {
            x := 1
            let x1 := mload(0)
            x := x1
        }
        return x;
    }
}
