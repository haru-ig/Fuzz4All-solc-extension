pragma solidity ^0.8.0;
contract MutatedDynamicArrays6 {
    uint256 [11] storage x = [5, 4, 3, 2, 1, 0, 0, 0, 0, 0];
    function modify(uint256 _y) public {
        x[10] = _y;
    }
}
