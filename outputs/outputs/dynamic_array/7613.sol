pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_12{
    uint A;
    function a() public{
        A = 0;
        a();
        if (A!= 0)
            revert();
    }
    function b() public {
        A = 0;
        a();
        if (A!= 10)
            revert();
    }
}
