pragma solidity ^0.8.0;
contract Test13 {
    uint A;

    function a() public {
        A = 20;
    }
    function b() public {
        if (A!= 20)
            revert();
    }
}
