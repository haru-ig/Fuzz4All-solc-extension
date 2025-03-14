pragma solidity ^0.8.0;
contract Test47Semant {
    uint[] public array;
    uint x;
    constructor() public {
        x = 2;
    }
    function setArray() public {
        array = [0, 1, 2, 3];
    }
}
