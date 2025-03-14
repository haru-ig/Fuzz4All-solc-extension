pragma solidity ^0.8.0;
contract TestMutator6 {
    uint256 public x;
    uint256 public z;
    function set(uint_uint18 _value1) public {
    x = _value1;
    }
    function set2() public {
    x < x + 1? _ = 0 : x = x + 1;
    z < x? _ = 0 : x = x + 1;
    }
}
