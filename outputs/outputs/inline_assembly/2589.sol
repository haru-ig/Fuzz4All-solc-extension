pragma solidity ^0.8.0;
contract C {
    uint public x;
    constructor()  public {
        x = 3;
    }

    function test() public {
        x = 4;
    }
}
