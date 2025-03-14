pragma solidity ^0.8.0;
contract MovedSemanticsHasFallback {
    address x;
    function test() public pure {
        x = x;
    }
    function testWithFallback() public pure {
        x = x;
        x = x;
    }
}
