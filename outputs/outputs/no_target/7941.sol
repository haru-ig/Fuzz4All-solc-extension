pragma solidity ^0.8.0;
contract TestMutator4 {
    uint256 public x;
    uint256 public z;
    constructor () public {
    x = x < 0? 0 : (x - 1);
    z = x;
    }
    function set(uint256 _value1) public {
    x = _value1;
    }
    function set2(uint256 _value2) public {
    set((_value2 > 0 && _value2 < x) || x > z + 1? _value2 : x);
    }
}
