pragma solidity ^0.8.0;
contract B{
    function f() internal{
        f();
    }
    function f() public{
        f();
    }
}
