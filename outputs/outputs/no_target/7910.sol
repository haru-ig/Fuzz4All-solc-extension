pragma solidity ^0.8.0;
contract TestMutator7 {
    uint256 public x;
    function set2(uint256 _value) public {
        x++;
        x = _value + x;
    }
}
