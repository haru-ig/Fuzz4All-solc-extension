pragma solidity ^0.8.0;
contract MutatedDynamicArrays7 {
    uint256 x = 10;
    function modify(uint256 _y) external {
        x = _y;
        x = x + 1;
    }
}
