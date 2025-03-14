pragma solidity ^0.8.0;
contract Emulator {
    function myAddress() public pure returns (address) { return address(this); }
    function myMsgSender() public view returns (address) {
        assembly { return msg.sender }
    }
    function myBalance() public view returns (uint) {
        address payable a;
        uint x;
        assembly { a := mload(0x40) }
        x = a.balance;
        while (a.balance>0) {
            assembly { a := a.sub(x) }
        }
        return x;
    }
    function testSelfdestruct(address t, uint value) public {
        t.transfer(value);
    }
    function testCallValue(uint x, address payable a) public {
        a.call{
