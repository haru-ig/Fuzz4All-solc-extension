pragma solidity ^0.8.0;
contract SemanticTest11 {
    uint[] public array;
    uint x;
    uint y;
    uint z;
    constructor () public {
        x = 0;
        y = 0;
        z = 0;
        for(uint i = 0; i < 2; i++) {
            array[i] = i;
            z += array[x];
            x += 1;
        }
    }
    function add() public {
        y = y + z;
        z = 0;
        x += 1;
    }
}
