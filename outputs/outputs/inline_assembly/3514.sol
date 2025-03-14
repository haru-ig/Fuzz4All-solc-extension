pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        uint newValue;
        newValue = _oldValue - 2;
        assert(newValue == (ZERO - 2));
        _oldValue -= ONE;
        _oldValue += ONE;
        _oldValue -= ONE;
        _oldValue += TWO;
        _oldValue += TWO;
        _oldValue += TWO;
        _oldValue -= ONE;
        _oldValue += ONE;
        newValue = _oldValue - ONE;
        assert(newValue == ONE);
        _oldValue -= ONE;
        newValue = _oldValue - TWO;
        assert(newValue == TWO);
        _oldValue -= _oldValue;
        newValue = _oldValue - TWO;
        assert(newValue == 0);
        newValue += _oldValue;
        assert(newValue == _oldValue);
        _oldValue -= _oldValue;
        newValue = _oldValue - ONE;
        assert(newValue == 0);
        _oldValue -= TWO;
        newValue = _oldValue - ONE;
        assert(newValue == (_oldValue - ONE));
        _oldValue -= ONE;
        _oldValue -= TWO;
        newValue = _oldValue + TWO;
        assert(newValue == _oldValue + TWO);
        newValue = 1;
        newValue += 2;
        newValue += ONE;
        newValue += ONE;
        newValue += ONE;
        newValue += TWO;
    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= HEREONE - 2;
        _value -= HEREONE - ONE;
        _value +=
