pragma solidity ^0.8.0;
contract EtherTester {
    receive() external {
        address me = msg.sender;
        me.transfer(msg.value);
    }
}
#pragma
