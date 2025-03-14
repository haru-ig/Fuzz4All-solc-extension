pragma solidity ^0.8.0;
contract Test42{
    uint public a;
    struct S {
        uint[10] a;
    }
    function f(S memory memory) public {}
}
