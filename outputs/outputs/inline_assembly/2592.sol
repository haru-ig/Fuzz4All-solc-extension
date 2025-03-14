pragma solidity ^0.8.0;
contract C {
    uint public x;
    constructor()  public {
        x = 9;
    }
    modifier a() {
        uint[] memory arr = new uint[](100);
        uint x = 3;
        arr[0] = x;
        revert();
    }
    function test() public a {
        x = 4;
    }
