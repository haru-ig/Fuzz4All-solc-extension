pragma solidity ^0.8.0;
contract Mutater6{
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

pragma solidity ^0.8.0;
contract Mutater7{
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
/* In this contract, it is needed to use a fallback function as well as a method of a contract.
The fallback function executes any code. At this stage a complex action might take place. In this case, any
way to execute them would be dangerous. So, it must be defined first
