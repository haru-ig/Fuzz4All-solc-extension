pragma solidity ^0.8.0;

contract M255 is M255{
    constructor(){x=1;}
    function subtract(uint z) public onlyOwner{
        y=y-z;
    }
    function divide(uint z) public onlyOwner{
        x= x/z;
    }
}
