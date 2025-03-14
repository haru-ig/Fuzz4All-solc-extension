pragma solidity ^0.8.0;
contract ChangeMutated {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    function set (uint _value) public onlySet(_value) {}
}
