pragma solidity ^0.8.0;
contract FallbackMethod {
    constructor(address _address) {
        contractAddress = _address;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    function () payable external {
        require(msg.value > 0, "No value given.");
        contractAddress.transfer(msg.value);
    }
    address public contractAddress;
}
