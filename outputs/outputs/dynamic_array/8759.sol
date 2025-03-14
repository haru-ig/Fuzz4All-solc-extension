pragma solidity ^0.8.0;
contract SemanticallyEquivalentRevertedSolidity62_dynamic_189 {
    uint public m;
}

pragma solidity ^0.8.0;
contract SyntaxError_dynamic_191 {
    struct S {
        uint x;
    }
    uint public m;
    constructor() public {
        m = new S;



        m.x = 0;
    }
}
