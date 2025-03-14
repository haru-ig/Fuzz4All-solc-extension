pragma solidity ^0.8.0;
contract MutagenMod {
    mapping (uint => uint) public map;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    function add(uint _value) public onlySet(_value) {
        _value = _value + 1;
        _value = _value + 1;
        _value = _value + 1;
    }
}
