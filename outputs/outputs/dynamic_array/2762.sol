pragma solidity ^0.8.0;
contract SemanticEquality_ArrayElements21 {
    uint[] public a;
    constructor() public {
        uint len = 10;
        a.push(0);
        uint init;
        init = 1;
        a.push(init);
    }
    function push(uint elem) public {
        a.push(elem);
    }
}
