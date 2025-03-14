pragma solidity ^0.8.0;
contract Test42_Update {
    address[] public admin;
    uint public val;
    constructor(uint x_) public {
        val = x_;
        admin.push(msg.sender);
        if (val!= 1) {
            admin.pop();
        }
    }
    function test() public {
        delete admin[1];
    }
}
