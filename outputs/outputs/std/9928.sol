pragma solidity ^0.8.0;
contract S12Mutated14 {
    uint a = 0;
    constructor () {
    }
    function change() public {
        a *= 3;
    }
}
contract S14Mutated14 {
    uint a;
    constructor () {
        a = 0;
    }
    function change() public {
        a += 1;
    }
}
contract S14Mutated15 {
    uint a;
    constructor () {
        a = 1;
    }
    function change() public {
        a *= 3;
    }
}
contract S15Mutated15 {
    uint a;
    constructor () {
        a = 3;
    }
    function change() public {
        a += 2;
    }
}
contract S11Mutated16 {
    uint8 a;
    constructor () {
    }
    function change1() public {

    }
}
contract S12Mutated16 {
    uint8 a;
    constructor () {
        a = 0;
    }
    function change2() public {
        a += 1;
    }
}
