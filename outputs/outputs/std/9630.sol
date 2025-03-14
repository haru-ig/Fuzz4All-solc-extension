pragma solidity ^0.8.0;
contract MutateBigNeg10f7d {
address user;
uint value;
constructor() {value = 0;}
modifier onlyUser {require(msg.sender == user,"You are not authorized to perform this action"); _;};
function() external payable {require(value == 0,"No extra money please.");}
function setAddress(address _address) onlyUser{user = _address;}
function deposit() onlyUser{value = 100000;}
    function payback() onlyUser {msg.sender.transfer(value);}
}
