pragma solidity ^0.8.0;
contract LegacyContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        _oldValue -= ONE;
        assert(_oldValue == ZERO);

        _oldValue = TWO;

        _oldValue -= ONE;
        assert(_oldValue == ZERO);

        _oldValue = ONE;

        _oldValue = ONE;

        ;
    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= TWO;
        assert(_value == TWO);

        _value = ONE;

        _value = ONE;
        _value = TWO;
        _value = ZERO;
    }
}
contract NewLegacyContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        _oldValue -= ONE;
        assert(_oldValue == ZERO);
        _oldValue += ONE;
        assert(_oldValue == ZERO);
    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= TWO;
        assert(_value == TWO);
        _value += ONE;
        assert(_value == ONE);
        _value -= ONE;
        assert(_value == ZERO);
    }
}
