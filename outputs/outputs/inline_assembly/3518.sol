pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    function change (uint _value) public {
        _value -= _value-2;
        _value -= ONE-1;
        _value += 1-2;
        _value += _value-1;
    }
}
contract NonSemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    function change (uint _value) public {
        _value -= _value-1;
        _value += ONE;
        _value -= _value-1;
        _value += _value-2;
        _value -= TWO;
    }
}
