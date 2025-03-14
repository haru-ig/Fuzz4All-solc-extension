pragma solidity ^0.8.0;
contract Test15 {
    uint A;
    function a() public{
        A = 45;
        a();
        if (A!= 20)
            revert();
    }
    function b() public {
        A = 0;
        A += 10;
        a();
        if (A!= 40)
            revert();
    }
}
