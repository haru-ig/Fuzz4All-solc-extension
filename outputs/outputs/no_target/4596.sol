pragma solidity ^0.8.0;
contract A is EternalStorage {
    function f() public{
        f();
    }
    function g() public{
        g();
    }
    function h() public{
        h();
    }
}
