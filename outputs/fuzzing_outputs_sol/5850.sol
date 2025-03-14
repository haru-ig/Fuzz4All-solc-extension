pragma solidity ^0.8.0;
contract MovedSemantics {
    address x;
    function test() public {
        x = x;
        x = x; x = x;
    }
}
