pragma solidity ^0.8.0;
contract Mutated1 {
    uint x = 0;
    function f() {
        x += 1;
    }
}
contract Mutated2 {
    uint x = 0;
    function f() {
        x += 1;
    }
}
contract Mutated3 {
    uint x = 0;
    function f() {
        x += -2;
    }
}
