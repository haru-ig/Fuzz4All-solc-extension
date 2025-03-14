pragma solidity ^0.8.0;
contract MutatedExample {
    address payable smartContract1 = address(0x0);
    address payable smartContract2;
    function mutatedExample(address _addr) public {
        smartContract2 = smartContract2.balance > 0? smartContract1 : _addr;
    }
}
