pragma solidity ^0.8.0;
contract Mutater4 {
    constructor(address _address) {
        contractAddress = _address;
        callAddress = _address;
        callResult = 0;
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
    function getCallResult() public view returns (uint) {
        return callResult;
    }
    function setCallResult(uint _value) public {
        callResult = _value;
    }
    address public contractAddress;
    address public callAddress;
    uint public callResult;
}
