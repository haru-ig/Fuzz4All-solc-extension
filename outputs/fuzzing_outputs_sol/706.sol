pragma solidity ^0.8.0;
contract Receiver {
    uint storedData;
    function setValue(uint) internal returns (uint) {
        storedData = input;
        contractReceiver()._setValueInternal(input);
        return storedData;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
    function contractReceiver() internal pure returns (Receiver) {
        return Receiver(msg.sender);
    }
}
contract Caller {

    function doSomething() public payable {}


    function setValue(uint) public payable {}
    function getValue() public view returns (uint) {}
}
