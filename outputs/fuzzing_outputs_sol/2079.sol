pragma solidity ^0.8.0;
contract Mutater2 {
    constructor(address _address) {
        contractAddress = _address;
        callAddress = _address;
        callResult = 0;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    function setCallAddress(address _address) public {
        callAddress = _address;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function getCallAddress() public view returns (address) {
        return callAddress;
    }
    function getCallResult() public view returns (uint) {
        return callResult;
    }
    uint public contractAddress;
    uint public callAddress;
    uint public callResult;
    uint public callResult4;
}
