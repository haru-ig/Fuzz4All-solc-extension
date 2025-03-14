pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        _oldValue -= ONE;
        assert(_oldValue == ZERO);
        _;
    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= ONE;
        _value += ONE;
        _value -= ZERO;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value += TWO;
    }
}
contract NonSemanticsEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        _oldValue -= ONE;
        assert(_oldValue == ZERO);
        _;
    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= ONE;
        _value += ONE;
        _value += TWO;
        _value += TWO;
        _value += ONE;
        _value += TWO;
        _value -= ONE;
    }
}
/* Please create a semantics equivalent program to the previous version of the
