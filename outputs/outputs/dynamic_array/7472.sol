pragma solidity ^0.8.0;
contract Test43 {
    address public admin;
    mapping (address => uint) public adminOf;
    constructor () public {
        admin = msg.sender;
    }
    function test() public {
        adminOf[msg.sender]++;
        delete adminOf[msg.sender]++;
        uint adminCount = adminOf[address(this)];
        test44[uint8(0)] = address(this);
    }
    Test43() public {
        adminOf[address(0x2300230020)] = 1;
    }
    function test44() public {
    }
}
