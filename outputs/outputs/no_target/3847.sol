pragma solidity ^0.8.0;
contract S4 {
        uint private a;
        uint256 private b;
    constructor() public {
        if (a > type(uint256).max) {
            b = a + a + 1;
            a = a - 1;
        } else {
            a = a + a + 1;
            a = a + a;
        }
        a = a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a + a;

    }
    function change(uint _value) public {
        a = a + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + _value + 1 + 1 + 1 + 1
