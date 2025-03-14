pragma solidity ^0.8.0;
contract ConstantAccessBlock5Mutator {
    bool public _var;
    uint public _value;
    constructor(){
        _var = true;
        _value = 1;
    }
    function test() public returns (bool) {
        uint x = 1;
        assembly {
            x := add(x, 10)
            x := add(x, 10)
        }
        return _var;
    }
    function getValue() public view returns (uint) {
        return _value;
    }
}
