pragma solidity ^0.8.0;
contract Mutater7 {
    uint32 internal _value;
    function mutatedFunction() public payable {
        _value = msg.value;
        receiveTransfer(msg.value);
    }
    function receiveTransfer(uint32 value) public pure {
        revert();
    }
}
