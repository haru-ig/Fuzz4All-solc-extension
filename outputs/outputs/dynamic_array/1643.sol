pragma solidity ^0.8.0;
contract MutatedDynamicArrays4B {
    uint256 a = 10;
    uint256 b;
    function mutate() public {
        b  -= a;
        a  = x;
    }
}
