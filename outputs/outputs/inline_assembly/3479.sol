pragma solidity ^0.8.0;
contract MutateContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlyGet (uint _value) {
        assert (_value == ONE);
        _;
    }
    function change (uint _value) public onlyGet (_value) {
        _value = TWENTYFOUR;
        _value = TWO;
        _value = TWENTYFOUR;
        _value = ZERO;
        _value = TWO;
        _value = THREE;
        _value = ZERO;
        _value = EIGHT;
    }
}
