pragma solidity ^0.8.0;
contract AdvancedContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate {
        assert(__MSG_SENDER() == msg.sender);
        _;
    }
    function change (uint _value) public onlyUpdate {
        _value -= TWO;
        assert(_value == TWO);
        _value = ONE;
        _value = ONE;
        _value = TWO;
        _value = ZERO;
    }
}
