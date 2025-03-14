pragma solidity ^0.8.0;
contract Mutated {
    struct MutatedStruct {
        uint a;
    }
    MutatedStruct test;
    function mutatedPlus() public {
        ++test.a;
        Mutated memory a = test;
        a.a = 2;
        emit Mutated(a.a);
    }
}
