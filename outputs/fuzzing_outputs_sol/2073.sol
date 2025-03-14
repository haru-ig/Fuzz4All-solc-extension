pragma solidity ^0.8.0;
contract Mutater4 {
    constructor(address _address) {
        contractAddress = _address;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    fallback () external payable {
        address callerAddress = msg.sender;
        selfdestruct(callerAddress);
        selfdestruct(contractAddress);
    }
    address public contractAddress;
}
