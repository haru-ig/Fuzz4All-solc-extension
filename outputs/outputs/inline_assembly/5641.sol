pragma solidity ^0.8.0;
contract ConstantAccessBlock6Mutator {
    bool public _var;
    uint internal _value;
    constructor(){
        _var = true;
        _value = 1;
    }
    function test() public returns (uint) {
        uint x = 1;
        assembly {
            x := add(x, 10)
            x := sub(x, 10)
        }
        return _value;
    }
    function getValue() public view returns (uint) {
        return _value;
    }
}
