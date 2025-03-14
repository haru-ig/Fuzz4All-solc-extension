pragma solidity ^0.8.0;
contract SemanticTest11 {
    uint[] public array;
    uint x;
    uint y;
    constructor () public {
        x = 0;
    }
    function add() public {
        x += array[y];
        y += 1;
    }
}
