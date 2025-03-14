pragma solidity ^0.8.0;
contract B{
    function f() public{
        f();
    }
    function f1(uint4) public{
        f();
    }
}
