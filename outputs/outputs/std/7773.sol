pragma solidity ^0.8.0;
contract Subroutine {
    function f(uint x1) public {
        f();
        f();
    }
    function f() public {}
}
