pragma solidity ^0.8.0;
contract S9Mutated10 {
    uint16 b;
    constructor () {
        b = 32768;
    }
    function change1() public {
        b--;
    }
}
