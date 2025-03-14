pragma solidity ^0.8.0;
contract C {
    uint public x;
    constructor()  public {
        memory[1] = [2];
    }
    function test() public {
        x = 4;
    }
}
