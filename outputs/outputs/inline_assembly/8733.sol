pragma solidity ^0.8.0;

contract Simple{
    uint x;
    constructor() public{
        x = 100;
    }
    function change()public{
        x = x + 1;
    }
}
