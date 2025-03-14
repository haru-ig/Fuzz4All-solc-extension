pragma solidity ^0.8.0;
contract FixedEquiv163 {
    uint public _value;
    function set(uint163 w) public {
        _value = w;
    }
    function f() public view returns (uint){
        return uint128(_value);
    }
}
contract SemanticalEquiv163 is SemanticalEquiv84, FixedEquiv163 {
}
contract Checkpoint {
    uint public value;
    event Checkpoint(uint value);
    function check(uint _value) public view returns (uint) {
        return value == _value? 0 : mcd(value, _value);
    }
    function mcd(uint _a, uint _b) public pure returns (uint) {
        return _a == 0? _b : mcd(_b, _a % _b);
    }
}
