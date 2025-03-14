pragma solidity ^0.8.0;
contract EquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier onlyUpdate (address _oldSetter, uint _oldValue) {
        assert(address(_oldSetter) == msg.sender);
        return _oldValue - ONE;
    }
    function updateValue (uint _x) public onlyUpdate(zeroAddress, _x) { return _x - ONE; }
    function updateValue () public { return updateValue(TWO); }
}
