pragma solidity ^0.8.0;


contract A {
    function f1(...) public {}
    function f2(...) public {
        f1(uint256(-2 ** 256 - 1));
    }
}
