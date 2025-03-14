pragma solidity ^0.8.0;
address payable addr;
modifier onlyMe(){if(msg.sender == addr) _; }
contract Person{
constructor(){
addr = payable(address(this));
}
}
contract Human is Person{
    constructor(){
addr.transferEthToAddress();
}
}
