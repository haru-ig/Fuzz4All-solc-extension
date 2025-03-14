pragma solidity ^0.8.0;
contract MutatedDynamicArrays8 {
    uint256 x = 10;
    function modify(uint256 _y) public {
        x += 1;
        x += _y;
    }
}
