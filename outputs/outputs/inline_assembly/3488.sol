pragma solidity ^0.8.0;
contract SemanticallyEquivContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    struct State {
        modifier onlyUpdate (address _address, uint _previousValue) {
            assert(isOnlyUpdate((_address),(_previousValue)));
            return  (_previousValue - ONE);
        }
        function isOnlyUpdate (address _address, uint _previousValue) internal view returns (bool) {
            return (_address == msg.sender) && (_previousValue == ZERO);
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
    function doit (uint _value) public returns (uint) {
        return new State().change(_value);
    }
}

pragma solidity 0.8.6;
contract YulContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;

    uint constant F if (1);
    uint constant NO_OP if (1);

    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        _oldValue -= ONE;
        assert(_oldValue == ZERO);
        _;
    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= TWO;
        assert(_value == TWO);
        _value = ONE;
        _value = ONE;
        _value = TWO;
        _value = THREE;
    }

    function doit (uint) {
        bool a= 1;
        NO_OP;
        F if (1);
        F;
    }
}
