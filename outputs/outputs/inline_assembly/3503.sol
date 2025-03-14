pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract2 {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate2 (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        _oldValue -= 2;
        assert(_oldValue == ZERO);
        _;
    }
    function change2 (uint _value) public onlyUpdate2(msg.sender, _value) {
        _value -= 1;
        _value -= 2;
        _value -= 1;
        _value -= 3;
        _value -= 1;
        _value -= 3;
        _value -= 2;
        _value -= 1;
        _value -= 3;
        _value -= 3;
        _value -= 1;
        _value -= 2;
    }
}
contract NonSemanticallyEquivalentContract {
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
        _value -= ONE;
        _value += ZERO;
        _value -= TWO;
        _value += ONE;
        _value += TWO;
        _value -= ONE;
        _value += ONE;
        _value -= TWO;
    }
}
