pragma solidity ^0.8.0;
contract SemanticTest11 {
    uint[2] public array;
    uint x;
    uint y;
    constructor () public {}
    function add() public {
        y += array[x];
        x += 1;
    }
}
