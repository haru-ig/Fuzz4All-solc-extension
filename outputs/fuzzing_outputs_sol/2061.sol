pragma solidity ^0.8.0;
contract Mutater3 {
    constructor(address _address) {
        contractAddress = _address;
    }
    modifier onlyCaller() {
        require(msg.sender == contractAddress,
            "Cannot mutate in this method!");
        _;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public onlyCaller {
        contractAddress = _address;
    }
    fallback () external payable {
        require(contractAddress == msg.sender,
            "Cannot mutate in this method!");
    }
   address public contractAddress;
}
