pragma solidity ^0.8.0;
contract T8FA_mutator_10 {
    struct A{
        string s;
        uint w;
        string v;
    }
    mapping (uint=>A) aa;
    mapping (uint=>address) aa_addr;
}

pragma solidity ^0.8.0;
contract T8FA_mutator_01 {
    struct A{
        string s;
        uint w;
        string v;
    }
    uint[] a;
    (uint x, A y) r = (0, address(0));
}

pragma solidity ^0.8.0;
contract T8FA_mutator_02 {
    struct A{
        string s;
        uint w;
        string v;
    }
    mapping (uint=>A) a;
    mapping (uint=>address) addr;
}
/***********
