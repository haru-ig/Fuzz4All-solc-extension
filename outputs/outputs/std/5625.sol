pragma solidity ^0.8.0;
contract M254{
    uint public x;
    uint public y;
    address public owner;
    uint x_;
    uint y_;
    constructor(){
        owner = msg.sender;
    }
    modifier hasOwner(){
        msg.sender == owner;
        _;
    }
    function multiply(uint z) public hasOwner{
        x_=x_*z;
    }
    function divide(uint z) public hasOwner{
        x=x_/z;
    }
    function addY(uint z) public hasOwner{
        x_=x_+z;
    }
    function subY(uint z) public hasOwner{
        x=x_-z;



    }
    function modifyX() public hasOwner{
        x_ += 1;
    }
    function x_() public view returns(uint){
        return x_;
    }
}
function getG(address _add);
