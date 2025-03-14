pragma solidity ^0.8.0;
contract SemanticallyEquivalentContractInline {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;

    function change (uint _value) public {
        uint oldValue = _value;
        _value -= ONE;
        _value += ZERO;
        _value -= TWO;
        _value += ONE;
        _value += TWO;
        _value -= ONE;
        _value += ONE;
        _value -= TWO;
        _value += ONE;
        _value += _value;
    }
}
contract NonSemanticallyEquivalentContractInline {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;

    function change2 (uint _value) public {
        uint oldValue = _value;
        _value -= 2;
        _value -= ONE;
        _value += ONE;
        _value -= ONE;
    }
}
