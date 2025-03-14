pragma solidity ^0.8.0;
contract CallerExample {
    function originalCall() public {
        transfer(msg.sender, msg.value);
    }
    function testContract() payable public {
        originalCall();
    }
}
