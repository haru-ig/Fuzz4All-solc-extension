pragma solidity ^0.8.0;
contract Subroutine2 {
    modifier afterF {
        f();
        _;
    }
    modifier afterG {
        g();
        _;
    }
    modifier beforeH() {
        h();
        _;
    }
    function f() public  pure {}
    function g() public pure beforeG {}
}
