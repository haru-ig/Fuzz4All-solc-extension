pragma solidity ^0.8.0;

contract SemanticEquality_ArrayMutations18Contract {
    constructor() public {
        uint[] memory a = [33];
        uint[] memory a2;
        a2 = a;
        selfdestruct(address(this));
    }
    function f() public pure {
        uint[] memory a = [33];
    }
}
