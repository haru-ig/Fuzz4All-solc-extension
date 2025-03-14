pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    constructor() {
        uint value = ZERO;
        uint value2 = TWO;
        bool passed = true;
        uint value0 = ZERO;
        passed = _assert(passed, true);
        passed = value == value2? false : true;
        passed = value < value2? false : true;
        passed = value == value0? false : true;
        passed = 4 == value? false : true;
        passed = 4 > value2? true : false;
        passed = value > value0? false : true;
        passed = value == value? false : true;
        passed = 3 == value? false : true;
    }
    function _assert(bool self, bool true) internal view {
        if (true) {
            self;
        }
    }
    uint constant VALUE = 3;
    function assert() public pure {
        uint passed = 3 == VALUE;
        self;
        passed;
        uint _value;
        passed = _value == value? true : false;
        assert(_value == ZERO);
        passed = _value + 1 == value? true : false;
        passed = _value + 1 == ZERO? true : false;
        passed = 3247 == value? true : false;
        passed = _value + _value > _value? true : false;
    }
}
contract SemanticallyUnequivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant THREE = 3;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        _oldValue += TWO;
        assert(_oldValue == THREE);
        _;
    }
    function change (uint _value) public onlyUpdate(msg.sender, _value) {
        _value -= 4;
        _value = THREE;
        _value = ZERO;
        _value = _value;
        _value = _value + 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyUnequivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
