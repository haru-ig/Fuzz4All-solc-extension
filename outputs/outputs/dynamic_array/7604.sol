pragma solidity ^0.8.0;
contract Test14 {
    uint A;
    function a() public{
        A = 45;
        a();
        if (A!= 20)
            revert();
    }
    function b() public {
        A = 0;
        a();
        if (A!= 45)
            revert();
    }
}
