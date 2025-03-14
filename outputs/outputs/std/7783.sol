pragma solidity ^0.8.0;
contract MutatedSubroutine is Subroutine {
    function f() public beforeF {}
    function g() public beforeG {
        while(true) beforeF;
    }
}
