pragma solidity ^0.8.0;
contract SemanticTest11 {
    uint[] public array;
    uint x;
    uint y;
    constructor () public {
        x = 0;
        y = 0;
        for(uint i = 0; i < 2; i++) {
            array[i] = i + 1;
        }
        delete array[2];
    }
    function remove() public {
        x -= 1;
    }
}
