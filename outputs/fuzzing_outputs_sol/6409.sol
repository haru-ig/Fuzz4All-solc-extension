pragma solidity ^0.8.0;
contract Caller {
    function send() public pure returns (uint) {
        Caller _caller = Caller(address(this));
        uint a = _caller.send();
        (uint b, uint c) = sendData();
        return a + b + c;
    }
    function sendData() public pure returns (uint, uint) {
        uint a = 1;
        return (a + 2, a / 4);
    }
}
