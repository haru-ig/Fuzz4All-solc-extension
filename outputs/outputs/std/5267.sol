pragma solidity ^0.8.0;
contract MyContract {
    uint public myconst;
    uint myuint;
    address addr;
    mapping(uint => uint) public mappingvalue;
    constructor() {
        addr = msg.sender;
        myconst = 8;
    }
    function f() public {
        myuint = mappingvalue[myconst] * myconst + myconst;
    }
}
