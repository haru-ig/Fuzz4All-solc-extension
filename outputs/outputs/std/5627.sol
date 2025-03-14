pragma solidity ^0.8.0;
contract M338{
    uint public x1 = 1;
    uint public x0;
    uint public y0;
    uint public y1;
    uint public x2;
    uint public y2;
    uint public y3;
    uint public x3;
    uint public y4;
    uint public x4;
    uint public y5;
    uint public x5;
    uint public y6;
    uint public x6;
    uint public y7;
    uint public x7;
    uint public y8;
    uint public x8;
    uint public y9;
    uint public x9;
    uint public _x10;
    uint public y10;
    uint public x10;
    uint public _x11;
    uint public x11;
    uint public x12;
    uint public y12;
    uint public _x13;
    uint public y13;
    uint public x13;
    uint public y14;
    uint public x14;
    uint public y15;
    uint public _x16;
    uint public _x17;
    uint public x17;
    uint public y17;
    uint public x18;
    uint public _x19;
    uint public x19;
    uint public y19;
    address public owner;
    function(){
        owner = msg.sender;
    }
    modifier hasOwner(){
        msg.sender == owner;
        _;
    }
    constructor(){
        owner = msg.sender;
    }
    function multiply() public hasOwner{
        ++x1;
        ++x0;
    }
    function divide() public hasOwner{
        --_x17;
        --x0;
    }
    function addY() public hasOwner{
        ++y0;
    }
    function subY() public hasOwner{
        --y1;
        ++x0;
        ++x1;
        ++x2;
    }
    function setValues(uint _x, uint _y) public hasOwner {
        x10 = _x;
        y10 = _y;
    }
    function getValues() public constant returns (uint _x, uint _y){
        _x = x1;
        _y = y1;
    }
}
