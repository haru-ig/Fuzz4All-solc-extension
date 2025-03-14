pragma solidity ^0.8.0;
contract Mutator {
    function Mut(uint a) public {
        a = a + 1;
    }
    event MutLog(uint a);
}
contract Mutator {
    function Mut(uint a) public {
        Mut(0);
        assert (a == 0);
        Mut(0);
        assert (a!= 0);
    }
    event MutLog(uint a);
}
contract Mutation {
    uint a;
    function Mut2() public {
        a = 1;
        b2 = 2;
        Mut(1);
        a = 2;
        d = 3;
        Mut(0);
        d = 2;
        a = 3;
        b2 = 4;
        b2 = 3;
        a = 4;
        b2 = 2;
        b2 = 1;
        b2 = 2;
    }
    uint c;
    uint b1;
    uint d;
    uint b2;
}
