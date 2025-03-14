pragma solidity ^0.8.0;
contract M255{
    address public owner;
    uint public x = 1234567777;
    uint public y = 2433423;
    constructor(){
        owner = msg.sender;
    }
    modifier hasOwner(){
        msg.sender == owner;
        _;
    }
    function multiply(uint z) public hasOwner{
        x=x*z;
    }
    function divide(uint z) public hasOwner{
        x=x/z;
    }
    function addY(uint z) public hasOwner{
        y=y+z;
    }
    function subY(uint z) public hasOwner{
        y=y-z;
    }
}
