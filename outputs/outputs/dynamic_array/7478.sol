pragma solidity ^0.8.0;
contract Test42Reverted {
    address public admin;
    constructor () public {
        admin = msg.sender;
    }
    function test() public {
        adminOf[msg.sender] -= 2;
        uint adminCount = adminOf[admin]+2;
        if (!adminOf[admin].call.value(2)(new bytes(1))[0]) revert();
    }
}
