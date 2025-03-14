pragma solidity ^0.8.0;
contract Caller {
    function sendEther() public payable {}
    function recieveEther() public payable receive() {}
    function fallbackReceive() public pure {
        msg.sender.receive();
    }
    function fallbackPayable() public pure payable {}
}
