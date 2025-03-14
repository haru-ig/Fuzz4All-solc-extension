pragma solidity ^0.8.0;
contract Test43Bad1 {
    address public admin;
    mapping (address => uint) public adminOf;
    constructor () public {
        admin = msg.sender;
    }
    function test() public {
        adminOf[msg.sender] = uint(-1);
        uint adminCount = adminOf[admin]+1;
        delete adminOf[admin];
    }
}
