pragma solidity ^0.8.0;
contract C21{

    receive() external payable {}

    function c() public {c();}
    function c() public receive() {}

    function f() public receive() {}
}
