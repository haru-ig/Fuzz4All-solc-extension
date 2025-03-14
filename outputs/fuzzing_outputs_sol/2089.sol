pragma solidity ^0.8.0;
contract Mutater7 {
    constructor(address _address) {
        contractAddress = _address;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
}
contract ContractFallback7 {
    constructor(address _address) {
        contractAddress = _address;
        returnAddress = _address;
        uintFallback = 0;
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
    function getUintFallback() public view returns (uint) {
        return uintFallback;
    }
    function setUintFallback(uint _value) public {
        uintFallback = _value;
    }
    address public contractAddress;
    address public returnAddress;
    uint public uintFallback;
}
