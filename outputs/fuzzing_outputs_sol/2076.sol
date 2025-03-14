pragma solidity ^0.8.0;
contract Mutater5 {
    constructor(address _address) {
        contractAddress = _address;
        returnAddress = _address;
        callResult = 0;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    function getReturnAddress() public view returns (address) {
        return returnAddress;
    }
    function setReturnAddress(address _address) public {
        returnAddress = _address;
    }
    function getCallResult() public view returns (uint) {
        return callResult;
    }
    function setCallResult(uint _value) public {
        callResult = _value;
    }
    address public contractAddress;
    address public returnAddress;
    uint public callResult;
}
