pragma solidity ^0.8.0;
contract Mutater7 {
    function mutatedFunction(uint32 value) public payable {
        _value = value;
        msg.sender.transfer(value);
    }
    uint32 private _value;
}
