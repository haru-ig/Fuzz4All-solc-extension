pragma solidity ^0.8.0;
contract Mutater7 {
    constructor(address _address) {
        contractAddress8 = _address;
        returnAddress8 = _address;
        callResult8 = 0;
    }
    function getContractAddress8() public view returns (address) {
        return contractAddress8;
    }
    function setContractAddress8(address _address) public {
        contractAddress8 = _address;
    }
    function getReturnAddress8() public view returns (address) {
        return returnAddress8;
    }
    function setReturnAddress8(address _address) public {
        returnAddress8 = _address;
    }
    function getCallResult8() public view returns (uint) {
        return callResult8;
    }
    function setCallResult8(uint _value) public {
        callResult8 = _value;
    }
    address public contractAddress8;
    address public returnAddress8;
    uint public callResult8;
}
