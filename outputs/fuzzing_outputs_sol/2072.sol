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
    constructor(address addr) {
        contractAddress = addr;
    }
    function sendEther() public payable {
        msg.sender.send(address(this).balance);
    }
    address public contractAddress;
    receive() external payable {
        require(contractAddress == msg.sender,
            "Cannot mutate when receiving!");
        msg.sender.send(address(this).balance);
    }
}
