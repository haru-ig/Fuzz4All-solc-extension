pragma solidity ^0.8.0;
abstract contract A with C {
    function g() public{
        g();
    }
}
