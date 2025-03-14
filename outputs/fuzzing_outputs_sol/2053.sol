pragma solidity ^0.8.0;
contract Mutate {
    uint256 public counter;
    constructor(address _address) {
        contractAddress = _address;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    receive() external payable {
        require(contractAddress == msg.sender, "No mutation allowed here!");
        counter++;
    }
    address public contractAddress;
}
