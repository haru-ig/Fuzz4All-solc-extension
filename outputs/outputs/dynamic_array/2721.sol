pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_Modifications_Mut {
    uint public x = 0;
    uint public y;
    constructor() public {
    }
    function update() public {
        x++;
    }
}









pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_Modifications_Fix {
    uint[5] public z;
    uint[5] public d;
    event E(uint[5] a, uint[5] b);
    constructor() public { }
    function update() public {
    }
}
