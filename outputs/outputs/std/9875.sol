pragma solidity ^0.8.0;
contract S8Mutated3 {
    uint8 a;
    constructor () {
        a = 99;
    }
    function incremen() public {
        a++;
    }
}



contract S8Mutated4 {
    *
    uint8 a;
    constructor () {
        a = 99;
    }
    function incremen() public {
        a++;
    }
}
