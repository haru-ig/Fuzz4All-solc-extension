pragma solidity ^0.8.0;
contract Invariant {
    uint internal i;
    function increment() public returns(uint) {
        return ++i;
    }
}
contract Mutated {
    uint internal i;
    function increment() public returns(uint) {
        return ++i;
    }
}
contract Mutated2 {
    uint internal i;
    function increment() public returns(uint) {
        i = ++i;
        return i;
    }
}
contract Mutated3 {
    uint internal i;
    function increment() public returns(uint) {
        uint j;
        for (j = 1; j < i + 1; j++) {
            i = i + 1;
        }
        return i;
    }
}
contract Mutated4 {
    uint internal i;
    function increment() public returns(uint) {
        uint j;
        for (j = 1; j < i + 1; j++) {
            i = i + 1;
        }
        uint j;
        for (j = 2;j < i + 1; j++) {
            i = i + j;
            j = j + 1;
        }
        return i;
    }
}
