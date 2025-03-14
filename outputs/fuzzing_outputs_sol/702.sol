pragma solidity ^0.8.0;
contract Receiver {
    uint storedData;
    receive() payable public {
        storedData = msg.value;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}
