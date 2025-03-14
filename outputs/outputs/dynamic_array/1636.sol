pragma solidity ^0.8.0;
contract MutatedDynamicArrays4 {
    uint256 y = 2;
    function modify(uint256 _x) public {
        uint256 _tx = x + _x;
        x = _tx;
    }
}
