pragma solidity ^0.8.0;
contract S8Mutated3 {
    uint8[] public b;
    uint8 a;
    constructor () {
        a = 99;
    }
    function incremen() public {
        b[0]++;
        a++;
    }
}
