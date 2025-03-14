pragma solidity ^0.8.0;
contract Mutator {
    string constant private CONSTANT = "";
    string constant private CONSTANT2 = "";
    struct S {
        bool f;

    }
    function mutate(S storage s) public {
        if (s.f) delete s;
        else s.f = true;
    }
    function mutate2(ref bool storage s) public {
        s = false;
    }
    function mutate3(ref int constant storage s) public {
        s = -2;
    }
}
