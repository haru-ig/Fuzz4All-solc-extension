pragma solidity ^0.8.0;
contract S12Mutated12 {
    uint8 a = 120;
    constructor () {
    }
    function change() public {
        a /= 0;
    }
    function change2() public {
        a |= 0;
    }
}
