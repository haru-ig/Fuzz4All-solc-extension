pragma solidity ^0.8.0;
contract Mutater6 {
    constructor(address _address) {
        contractAddress = _address;
        callResult = 0;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    function getCallResult() public view returns (uint) {
        return callResult;
    }
    function setCallResult(uint _value) public {
        callResult = _value;
    }
    address[] array1;
    address[] array2;
    address[] public contractAddress;
    address[] public returnAddress;
    uint[] public callResult;
}
