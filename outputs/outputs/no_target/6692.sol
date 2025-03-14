pragma solidity ^0.8.0;




contract Mutated12 {
    int value;
    function minAddNegative(int x) public returns(bool) {
        value = x - 1;
        if (value > -128 && value < 128) {
            return true;
        } else {
            return false;
        }
    }
}
