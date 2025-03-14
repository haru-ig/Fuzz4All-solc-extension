pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint[2] private values;
    modifier onlyUpdate (uint _index) {
        assert(values[_index] == values[1]);
        values[_index] -= ONE;
    }
    function change (uint _index, uint _value) public onlyUpdate(_index) {
        values[_index] = ONE + 2*_value + TWO;
        values[_value + 2*_index] = ZERO;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint[2] private values;
    modifier onlyUpdate (address _oldSetter) {
        assert(_oldSetter == msg.sender);
        values[1] -= ONE;
        values[0] -= TWO;
        values[0] = ONE;
        values[1] = TWO;
        values[0] = ONE;
        values[1] = ZERO;
    }
    function change (uint _index, uint _value) public onlyUpdate(msg.sender) {
        values[_index] = ONE + 2*_value + TWO;
        values[_value + 2*_index] = ZERO;
    }
}
