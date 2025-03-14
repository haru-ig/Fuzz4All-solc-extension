pragma solidity ^0.8.0;
contract Mutater5B {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public {
        _value = value;
        receiveTransfer(value);
    }
    function call(uint256 amount) public {
        require(msg.sender.call{value: amount}(""), "Call failed");
        return;
    }
    function receiveTransfer(uint256 value) public payable { }
}
