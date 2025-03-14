pragma solidity ^0.8.0;
contract SemanticsIdenticalToYul {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    function change6 (uint _value) public {
        _value -= TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += ONE;
        _value -= ONE;
        _value += ZERO;
        _value -= TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += ONE;
        _value -= ONE;
        _value += ZERO;
        _value -= TWO;
    }
}
contract NoSemanticsIdenticalToYul {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    function change7 (uint _value) public {
        _value -= TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += ONE;
        _value -= ONE;
        _value += ZERO;
        _value -= TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
        _value += ONE;
