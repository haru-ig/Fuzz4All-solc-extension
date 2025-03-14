pragma solidity ^0.8.0;
contract ChangeLecture {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint constant FOUR = 4;
    uint constant FIVE = 5;
    uint constant SIX = 6;
    uint constant SEVEN = 7;
    uint constant EIGHT = 8;
    uint constant NINE = 9;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    function set (uint _value) public onlySet(_value) {}
}
contract ChangeComplex {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint constant FOUR = 4;
    uint constant FIVE = 5;
    uint constant SIX = 6;
    uint constant SEVEN = 7;
    uint constant EIGHT = 8;
    uint constant NINE = 9;
    uint constant TEN = 10;
    uint constant ELEVEN = 11;
    uint constant TWELVE = 12;
    uint constant THIRTEEN = 13;
    modifier onlySet(uint newValue) {
        assert(newValue!= ZERO);
        _;
    }
    function set (uint _value) public onlySet(_value) {}
}
