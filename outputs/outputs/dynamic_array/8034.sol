pragma solidity ^0.8.0;
contract Test48Mutant {
    uint[3] public array;
    uint x;
    constructor() public {
        x = 4;
    }
    function modArray() public {
        array[2] = 42;
    }
    function writeArray() public {
        array[1] = 42;
    }
}
