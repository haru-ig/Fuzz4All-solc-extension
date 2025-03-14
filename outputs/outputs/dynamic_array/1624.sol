pragma solidity ^0.8.0;
contract MutatedDynamicArrays1 {
    uint256 public x = 1;
    function mutate(uint256 _y) public {
        x = _y;
    }
}
