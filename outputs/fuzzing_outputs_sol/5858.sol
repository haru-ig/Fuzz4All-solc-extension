pragma solidity ^0.8.0;
contract MovedSemanticsNoFallback {
    address x;
    function test() public {
        x = x;
        x = x;
    }
}
