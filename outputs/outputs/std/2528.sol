pragma solidity ^0.8.0;
interface Address {
    function sendValue(uint amount) public returns (bool);
    function functionReturnsTrue() public view returns (bool);
    function toPayable(uint amount) public returns (address payable);
    function makePayment(address payable recipient, uint256 amount) public;
}

contract HelloWorld {
    function f() public {


        Address(msg.sender).sendValue(1 ether);
    }
}
