pragma solidity ^0.8.0;
contract TransmitterFallback {
    bytes memory _buffer = hex"ff";
    uint constant _sizeOfHeader = 2;
    uint constant _senderSize = 4;
    uint constant _dataSize = 4;

    constructor() {
        require(msg.data.length >= _sizeOfHeader + _senderSize + _dataSize, "Caller doesn't have enough memory space to store the data");
    }

    modifier onlyCaller() {
        require(msg.sender == address(this), "Caller is not the caller");
        _;
    }

    function send(bytes memory _data) public onlyCaller {
        assembly {
            calldatacopy(0, _buffer, add(_data, 0), add(_data, calldatasize()))
            let _sendData := mload(add(add(_buffer, add(0, _sizeOfHeader)), 0))
            let _sendValue := mload(add(_buffer, add(_sizeOfHeader, _dataSize))))
            msg.sender.transfer(_sendValue)
            pop(add(_buffer, add(_sizeOfHeader, _dataSize + _dataSize))))
            pop(0)
        }
    }
}


contract MutatingFallbackTest {
    bytes memory code = hex"60008061001f600080fd5b348015600f5760de565b60e01c19141560c457600080fd5b34801560195760de565b60e01c19141560d257600080fd5b34801560265760de565b60e01c19141560e457600080fd5b34801560325760de565b60e01c19141560ea57600080fd5b348015603e5760de565b60e01c19141560f057600080fd5b348015604b5760de565b60e01c19141560f457600080fd5b34801560585760de565b60e01c191
