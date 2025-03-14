pragma solidity ^0.8.0;
contract Test42Mutated {
    address admin;
    constructor () public {
        admin = msg.sender;
    }
    function test(mapping (address => uint) memory a) public {
        adminOf[msg.sender] = 1;
        delete adminOf[msg.sender];
        uint adminCount = adminOf[address(this)];
        a[msg.sender] = 1;
    }
}
