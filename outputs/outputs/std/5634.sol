pragma solidity ^0.8.0;
contract M255{
    address public owner;
    uint public x = 1234567777;
    uint public y = 2433423;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
    function multiply(uint z) public onlyOwner{
        x=x*z;
    }
    function divide(uint z) public onlyOwner{
        x=x/z;
    }
    function addY(uint z) public onlyOwner{
        y=y+z;
    }
    function subY(uint z) public onlyOwner{
        y=y-z;
    }
}
