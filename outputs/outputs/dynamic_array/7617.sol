pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_13 {
    uint A;
    uint B;
    function a() public{
        A = 0;
        a();
        if (A!= 0)
            revert();
    }
    function b() public{
        B = 0;
        b();
        if (A!= 0 && B!= 0)
            revert();
    }
    function c() public{
    }
    function d() public{
        B = 0;
        b();
        if (A!= 0 && B!= 1)
            revert();
    }
}
