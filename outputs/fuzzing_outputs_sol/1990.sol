pragma solidity ^0.8.0;
contract Mutator5 {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public {
        _value = value;
        _value.transfer(msg.value);
    }
    receive() payable { }
}
