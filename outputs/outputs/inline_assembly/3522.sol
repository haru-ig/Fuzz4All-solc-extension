pragma solidity ^0.8.0;
contract SemanticallyEquivalentContractYul {
    uint constant MIN_VALUE = 0;
    uint constant ONE = 1;
    uint constant MIN_VALUE_TWO = MIN_VALUE + 2;
    uint constant MAX_VALUE = 255;
    function change (uint _value) public {
        _value -= ONE;
        _value += ONE;
        _value += ONE;
        _value -= MAX_VALUE;
        require(MAX_VALUE == _value);
    }
}
contract NonSemanticallyEquivalentContractYul {
    uint constant MIN_VALUE = 0;
    uint constant MIN_VALUE_TWO = MIN_VALUE + 2;
    uint constant MAX_VALUE = 255;
    function change (uint _value) public {
        _value -= 2;
        _value += ONE;
        _value -= ONE;
        _value += MIN_VALUE_TWO;
    }
}
