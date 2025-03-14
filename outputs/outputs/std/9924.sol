pragma solidity ^0.8.0;
contract S11Mutated12 {
    uint8 a = 120;
    constructor () {
    }
    function change1() public {
        a *= 2;
    }
}
contract S12Mutated12 {
    uint8 a;
    constructor () {
        a = 0;
    }
    function change() public {
        a += 1;
    }
}
