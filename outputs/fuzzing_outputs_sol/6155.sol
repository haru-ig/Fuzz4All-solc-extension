pragma solidity ^0.8.0;
contract MyEtherReceiver {
    uint constant x = 8;
    constructor(uint x) public {
    }
    receive() external payable {
        msg.assert(msg.value == x);
    }
    function test() external {
        msg.assert(true);
    }
}
