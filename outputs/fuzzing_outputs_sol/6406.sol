pragma solidity ^0.8.0;
contract Caller {
    function send() public pure returns (uint) {
        (uint a, uint b) = sendData(a);
        return a + b;
    }
    function sendData(uint x) private pure returns (uint, uint) {
        uint a = 1;
        return (a + x, a / 4);
    }
}
