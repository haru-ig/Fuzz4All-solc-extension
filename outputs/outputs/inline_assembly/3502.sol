pragma solidity ^0.8.0;
contract SemanticallyEquivalentInterface {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    function change(uint _value) public;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        _oldValue -= ONE;
        assert(_oldValue == ZERO);
        _;
    }
}
