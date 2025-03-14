pragma solidity ^0.8.0;
contract Test42Equivalent {
    address public admin;
    mapping (address => uint) public adminOf;
    constructor () public {
        admin = msg.sender;
    }
    function test() public {
        adminOf[msg.sender] -= 1;
        uint adminCount = adminOf[admin]+1;
    }
}
