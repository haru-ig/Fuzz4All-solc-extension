pragma solidity ^0.8.0;
contract M255{
    uint public x = 1;
    uint public y = 2;
    uint public a;
    uint public b;
    constructor(){
        a = 8;
        b = 5;
    }
    modifier hasOwner(){
        msg.sender == owner;
        _;
    }
    function multiply(uint z) public hasOwner{
        a = a * b;
        x = x * z;
    }
    function divide(uint z) public hasOwner{
        a = a * b;
        x = x * z;
    }
    function mod(uint z) public{
        a = a * b;
        x = x * 2*z;
    }
}
