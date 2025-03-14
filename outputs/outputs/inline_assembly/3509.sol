pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate2 (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        _oldValue -= TWO;
        assert(_oldValue == ZERO);
        _;
    }
    function change2 (uint _value) public onlyUpdate2(msg.sender, _value) {
        change(_value);
        change(_value);
        change2(_value);
    }
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        _oldValue -= ZERO;
        assert(_oldValue == ZERO);
        _;
    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        assert(_value >= ONE);
        _value /= ONE;
        _value -= ONE;
        _value -= TWO;
        _value += ONE;
        _value += TWO;
        _value -= ONE;
        _value += TWO;
        _value -= ONE;
    }
}
contract NonSemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg
