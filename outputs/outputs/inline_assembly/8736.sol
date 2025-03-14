pragma solidity ^0.8.0;
contract Simple{
    uint private x = 100;
    constructor() public{
        x = 100;
    }
    function change()public{
        x = x + 1;
    }
}
