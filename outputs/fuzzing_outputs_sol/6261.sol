pragma solidity ^0.8.0;
contract Caller {
    constructor() {
    }
    function transferEtherToCaller(uint256 _amountToTransfer) public {
        if (msg.value == _amountToTransfer) {
            msg.sender.call{value: _amountToTransfer}("");
        } else {
            require(msg.value == _amountToTransfer && msg.value == msg.sender.call{value: _amountToTransfer}(""), "Inconsistent value transfer.");
        }
    }
}
