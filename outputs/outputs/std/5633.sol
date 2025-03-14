pragma solidity ^0.8.0;
contract M265{
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
    function createMultiplication(uint z) public hasOwner{
        uint x1 = x;
        uint z1 = z;
        uint x2 = x + z;
        x=addY(x1*z1);
        x=x2;
    }
    function createDivision(uint z) public hasOwner{
        uint x1 = x;
        uint z1 = z;
        uint x2 = x - z;
        x=addY(x1/z1);
        x=x2;
    }
    function createAddition(uint z) public hasOwner{
        uint x1 = x;
        uint z1 = z;
        uint x2 = x + z;
        x=x1+x2;
    }
    function createSubtraction(uint z) public hasOwner{
        uint x1 = x;
        uint z1 = z;
        uint x2 = x - z;
        x=x1-x2;
    }
    function addY(uint z) public hasOwner{
        y=addY(y+z);
    }
    function subY(uint z) public hasOwner{
        y=subY(y-z);
    }
}
