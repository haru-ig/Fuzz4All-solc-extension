pragma solidity ^0.8.0;

contract SemanticTest_v6a {

    function foo() public pure {
        uint[] memory x;
        x[0] = 0x000000200000000000000000000000000000000000000002050726f6f6d9610;
        x[1] = 0x000000400000000000000030000000000000000000000004050127aA2D810;
    }
}


contract SemanticTest_v0b {




    constructor()
    {

        x_ = 0x4001;
    }

    uint x_;
}
