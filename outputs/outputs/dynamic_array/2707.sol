pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Modifications_Mod {
    uint[] array1;
    uint[] public array2;
    constructor() public {
        array1 = new uint[](2);
        array2 = new uint[](8);
    }
    function add(uint a, uint _y) public {
        array2[array1.length] += 1;
        array1.push(_y);
    }
}
