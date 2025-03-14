pragma solidity ^0.8.0;
contract Test42Inverted {
    address public admin;
    constructor () public {
        admin = msg.sender;
    }
    function test() public {
        adminOf[msg.sender] -= 1;
        delete adminOf[admin];
    }
}
