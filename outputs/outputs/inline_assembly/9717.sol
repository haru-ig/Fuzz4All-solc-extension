pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint public c;

    struct State {
        uint counter;
    }

    struct State2 {
        uint value;
    }
 uint internal contractCounter;
 uint internal stateCounter;
 uint constant c = 0x00;
    function subtract(uint z) public pure returns (uint) {
        uint x = z / 60;
        if(x < 120) {
            return c - 6*x;
        } else {
            return x-6;
        }
    }
}
