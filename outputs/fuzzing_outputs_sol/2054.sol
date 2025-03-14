pragma solidity ^0.8.0;
contract Mutater {
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
        require(contractAddress == msg.sender, "No mutation allowed here!");
    }
    address public contractAddress;
}
