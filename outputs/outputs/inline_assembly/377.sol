pragma solidity ^0.8.0;
contract M9 {
    uint b;
    constructor() {
        b = 1;
    }
    function divide(uint x) public {
        block.difficulty;
        b = b-(2*x);
    }
    function modify(uint x) public {
        block.difficulty;
        b = b + x*(x / 2);
    }
    function double(uint x) public {
        block.difficulty;
        b = b+x;
    }
}
