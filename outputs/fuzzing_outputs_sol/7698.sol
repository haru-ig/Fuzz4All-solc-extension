pragma solidity ^0.8.0;
contract MutatedSemanticsWithFallback
{
    function isFallback() public pure returns (bool) {
        return msg.value == 0;
    }
    function test() public { revert(); }
}
contract MutatedSemantics
{
    function isFallback() public pure returns (bool) {
        return true;
    }
    function test() public { revert(); }
    function method() external pure returns (bytes32) {
        return myMethod;
    }
    function semanticEquivalence() public pure {}
}
