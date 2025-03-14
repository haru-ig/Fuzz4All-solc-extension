pragma solidity ^0.8.0;
contract Semantics {
    uint4 count;
    address payable receiver;
    function test() public {
        count += 1;
        if (msg.value == 1 ether) {
            receiver.transfer(msg.value);
        } else {
            fallback();
        }
    }
    function testFallback() public payable {
        count += 1;
        if (receiver.sendTransaction{value: msg.value}()) {
            fallback();
        } else {
            fallback();
        }
    }
    function fallback() public payable {
        if (msg.value == 1 Ether) {
            receiver = msg.sender;
        } else {
            receiver.call{value: msg.value}("");
        }
        receiver.transfer(msg.value);
    }
}
