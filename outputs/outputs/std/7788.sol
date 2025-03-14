pragma solidity ^0.8.0;
contract Subroutine {
    modifier beforeF() {
        f();
        _;
    }
    modifier beforeG() {
        g();
        _;
    }
    function f() public  pure {}
    function g() public pure beforeG {}
}
