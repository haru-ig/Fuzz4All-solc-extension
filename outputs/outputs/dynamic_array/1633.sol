pragma solidity ^0.8.0;
contract MutatedDynamicArrays2 {
    uint256 public x = 1;
    function modify(uint256 _y) public {
        uint256 _tx;
        assembly { _tx := x + _y }
        x = _tx;
    }
}
