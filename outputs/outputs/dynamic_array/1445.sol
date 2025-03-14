pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck21 {
    uint256[2][][] public array3;
    constructor () public {
        array3.push(new uint256[2][](0));
    }
}
