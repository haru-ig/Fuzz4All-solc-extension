pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34_Modifications_Mod is SemanticEquality_ArrayMutations34_Modifications_Mod {
    constructor() public {}
    function test() public {
        y = 7;
        update();
    }
    function update() public {
        x = 2 * 5;
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations34 {
    uint[] public x;
    void func() public { x.length = 5; }
    function test() public {
        func();
    }
}
