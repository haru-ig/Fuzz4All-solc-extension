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
    function addY(uint z, uint w) public hasOwner{
        y=y+z+w;
    }
    function subY(uint z, uint w) public hasOwner{
        y=y-z-w;
    }
}
