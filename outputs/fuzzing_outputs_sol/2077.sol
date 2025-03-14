pragma solidity ^0.8.0;
contract Mutater5 {
    constructor(address _address) {
        contractAddress = _address;
        callAddress = _address;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    function getCallAddress() public view returns (address) {
        return callAddress;
    }
    function setCallAddress(address _address) public {
        callAddress = _address;
    }
    function setReceiveContractAddress(address _address) public {
        receiveContractAddress = _address;
    }
    function getReceiveContractAddress() public view returns (address) {
        return receiveContractAddress;
    }
}
