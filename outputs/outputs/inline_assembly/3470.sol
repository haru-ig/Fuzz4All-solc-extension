pragma solidity ^0.8.0;
contract ChangeMutagenMod3 {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint constant FOUR = 4;
    uint constant FIVE = 5;

    function change3 (uint _value) public {
        if (_value < THREE)
        {
            _value = FIVE;
            _value = FOUR;
            _value = THREE;
            _value = ONE;
        }
        else {
            _value = ZERO;
        }
    }
}
