pragma solidity ^0.8.0;
contract MutatedDynamicArrays4 {
    uint256 x = 10;
    function modify(uint256 _y) public {
        x -= _y;
    }
}
