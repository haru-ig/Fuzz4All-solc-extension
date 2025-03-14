pragma solidity ^0.8.0;
contract Mod_12 {
    uint constant public result = 42;
    function div_12(uint) public returns (uint) {
        uint _result;
        _result = 42;
        uint _val = _result * 42;
        uint _val2 = div_12(_val);
        _result = (_result + _val2) + _val2;
        uint _result2;
        _result = _result - _result2;
        return _result;
    }
}
