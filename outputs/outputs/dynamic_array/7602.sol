pragma solidity ^0.8.0;
contract B {
    function b() public pure{
        b();
    }
}
contract C {
    uint a;
    function c() public{
        a = (20);
        B.b();
        c();
        C.b();
        if (a!= 20 || a!= 20)
            revert();
    }
}
