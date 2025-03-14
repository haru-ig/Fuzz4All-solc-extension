pragma solidity ^0.8.0;
contract Test14 {
    uint A;
    function a() public{
        A = 20;
    }
    function b() public {
        A = 55;
        a();
        if (A!= 55)
            revert();
    }
}
