pragma solidity ^0.8.0;
contract M253{
    uint public x = 251;
    address public owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner(){
        msg.sender == owner;
        _;
    }
    function add(uint y) public onlyOwner{
        x=x+y;
    }
    function sub(uint y) public onlyOwner{
        x=x-y;
    }
    function setAdd(uint y) public onlyOwner{
        x=x+y;
    }
    function setSub(uint y) public onlyOwner{
        x=x-y;
    }
}
