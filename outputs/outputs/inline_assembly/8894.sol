pragma solidity ^0.8.0;
contract Bad_Semantics
{
    struct S {
        bool _f;
        bool constant true_bool = true;
        bool _2;
    }
    S storage ss;
    function test() public {
        ss._2 = true_bool;
    }
}
