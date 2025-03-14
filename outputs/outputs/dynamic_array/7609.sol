pragma solidity ^0.8.0;
contract Test15 {
    uint A;
    function a() public{
        A = 4;
        A = A + 0x207;
        if (A!= 0x40)
            revert();
    }
    function b() public {
        A = 0;
        a();
        if (A!= 10)
            revert();
    }
}
