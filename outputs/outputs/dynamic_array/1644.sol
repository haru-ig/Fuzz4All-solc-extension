pragma solidity ^0.8.0;
contract MutatedDynamicArrays5 {
    uint256 x = 10;
    function modify(uint256 _y) public {
        x = x - _y;
    }
}
