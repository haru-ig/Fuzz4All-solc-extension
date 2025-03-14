pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36 {
    uint[] public ufs;
    constructor() public {
        ufs.push(uint(1),2,3);
    }
    function update() public {
        ufs[0] += 1;
        ufs[1] = 2 * 3;
    }
}
