pragma solidity ^0.8.0;
contract Test47MutatedSemant {
    uint x;
    uint[] public array;
    constructor() public {
        x = 2;
    }

    function setArray() public {
        array = [4, 5, 6, 7];
    }
}
