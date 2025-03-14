pragma solidity ^0.8.0;
contract Caller {
    function caller() public payable {
        uint _storageValue;
        (bool success, ) = address(this).call{value: address(this).balance}("");
        emit TransferEthereumToContract(address(this));
        _storageValue = msg.value;
    }
    event TransferEthereumToContract(address indexed from);
}
