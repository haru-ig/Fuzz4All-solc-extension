pragma solidity ^0.8.0;
contract SemanticEquality {
    uint[] immutable someArr;
    uint public x;
    uint public y;
    constructor() public {
        someArr = new uint[](5);
        someArr[1] = 2000;
        someArr[2] = uint(-2000);
        x = 1001;
        y = 5001 - 3 + 232534;
    }
    function update() public {
    }
}
