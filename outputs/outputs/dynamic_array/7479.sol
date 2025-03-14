pragma solidity ^0.8.0;
contract Test42 {
    address public admin;
    mapping (address => uint) public adminOf;
    constructor () public {
        admin = msg.sender;
    }
    function test() public {
        adminOf[msg.sender] -= 1;
        uint adminCount = adminOf[admin]+1;
        adminOf[adminOf[admin]] += adminCount;
        delete adminOf[admin];
    }
}
