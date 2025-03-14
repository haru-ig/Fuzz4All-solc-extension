pragma solidity ^0.8.0;
contract Caller {
    function send() public pure returns (uint) {
        (uint a, uint b) = sendData();
        return a + b;
    }
    function fallback() public pure {
        (uint a, uint b) = sendData();
        msg.sender.transfer(a + b);
    }
    function receive() public pure returns (uint) {
        return 4;
    }
    function sendData() public pure returns (uint, uint) {
        uint a = 1;
        return (a + 2, a / 4);
    }
}
