pragma solidity ^0.8.0;
contract Comp34{
address payable a;
constructor() public{
    a = msg.sender;
}
function add(address payable _b) public payable{
    a.transfer(address(this).balance);
}
}
contract Comp35{
uint32 a;
constructor(uint32 _initialAmount) public{
    a = _initialAmount;
}
function add(uint32 _b) public{
    a = a + _b;
}
}
contract Comp36{
address payable a;
constructor() public payable{
    a = msg.sender;
}
function add(address payable _b) public payable{
    a.transfer(address(this).balance);
}
}
