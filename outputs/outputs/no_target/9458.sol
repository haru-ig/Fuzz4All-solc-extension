pragma solidity ^0.8.0;
contract SemanticalEquiv65 {
    uint private _value;
    uint constant _min_uint = (uint(1) << 64);
    constructor () public
    {
        _value = _min_uint;
    }
    function f() pure public returns (uint){
        return _value;
    }
    function set(uint w) pure public{
        _value = w;
    }
    function mod() pure public returns (uint){
        uint x = _value;
        uint res = x % _min_uint;
        return res;
    }
}
