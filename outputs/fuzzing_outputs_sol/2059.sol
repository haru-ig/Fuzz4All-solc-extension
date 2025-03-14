pragma solidity ^0.8.0;
contract Caller {
    constructor(address _address, address _other) {}
    function() external payable { require(msg.sender == contractAddress, "No call allowed here."); }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
}
