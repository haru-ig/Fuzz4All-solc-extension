pragma solidity ^0.8.0;
contract S8Mutated5 {
    uint8 a;
    uint8 b;
    constructor () {
        a = 99;
        b = 100;
    }
    function addAndSub() public {
        a = a + 1;
        b--;
        emit Loga(a, b);
    }
    event Loga(uint8 a, uint8 b);
}
