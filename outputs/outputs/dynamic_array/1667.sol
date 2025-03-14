pragma solidity ^0.8.0;
contract MutatedDynamicArrays9 {
    uint256 _value;
    uint256 x;
    function set(uint256 _x) public {
        _value = _x * 2;
        x = _x;
    }

    function get() public view returns (uint256 _x, uint256 _y) {
        _x = x * 2;
        _y = 0;
    }
}
