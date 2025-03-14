pragma solidity ^0.8.0;
contract Test42Mutated2 {
    mapping (address => uint) public adminOf;
    constructor () public {
        adminOf[msg.sender] -= 1;
    }
    function test() public {
        adminOf[uint(~(msg.sender))] -= 1;
        delete adminOf[0];
    }
}
