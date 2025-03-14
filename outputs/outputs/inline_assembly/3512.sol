pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        _oldValue -= 2;
        assert(_oldValue == ZERO);
        _;
    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= ONE; _value += TWO; _value -= ZERO;
        _value += ONE; _value -= ONE; _value += TWO;
        _value = _value + ONE; _value -= TWO;
    }
}
contract NonSemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    function change2 (uint _value) public {
        _value -= ONE;
        _value += TWO;
        _value -= ZERO;
        _value += ONE;
        _value -= ONE;
    }
}
