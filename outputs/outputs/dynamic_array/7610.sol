pragma solidity ^0.8.0;
contract Test15 {
    uint A;
    mapping(uint => uint) A_;
    function a() public{
        A = 4;
        A_ = A_;
        A_ = A_;
        A_ = 10u >> 32;
    }
    function b() public {
        A = 0;
        a();
        if (A_!= 2147483647u)
            revert();
    }
}
