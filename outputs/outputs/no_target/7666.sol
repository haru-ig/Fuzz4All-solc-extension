pragma solidity ^0.8.0;
contract C {
    mapping(address=>uint) x;
    function f() {
        delete x[msg.sender];
    }
}
