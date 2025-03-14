pragma solidity ^0.8.0;
contract MutatedDynamicArrays3 {
    uint256 x = 1;
    function modify(uint256 _y) public {
        uint256 _tx = x + _y;
        x = _tx;
    }
}
