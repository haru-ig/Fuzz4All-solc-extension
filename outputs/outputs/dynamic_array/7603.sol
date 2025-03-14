pragma solidity ^0.8.0;
contract Test14X {
    uint A;
    function a() public{
        A = 20;
    }
    function b() public {
        A = 55;
        a();
        if (a()!= A+55)
            revert();
    }
    function c() public {
        a(); c;
        if (a()!= A+55)
            revert();
    }
}
