pragma solidity ^0.8.0;
contract Test43{
    address public admin;
    mapping (address => uint) public adminOf;
    constructor () public {
        admin = msg.sender;
    }
    function test() public {
        adminOf[msg.sender] = 1;
    }
    function test2() public {
        adminOf[address(this)] = 2;
    }
    function test3() public {
        adminOf[admin] = 3;
    }
}
