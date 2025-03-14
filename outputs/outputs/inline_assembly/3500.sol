pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    function change (uint _value) public {
        _value -= TWO;
        _value = ONE;
        _value = ONE;
        _value = TWO;
        _value = ZERO;
    }
}
