pragma solidity ^0.8.0;
contract Mutater {
    event ContractAddressChanged(address newAddress);
    constructor(address _address) {
      contractAddress = _address;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _newAddress) public {
        if (contractAddress!= address(0)) {
            emit ContractAddressChanged(contractAddress);
        }
        contractAddress = _newAddress;
    }
    address public contractAddress;
    modifier onlyContractAddress() {
        require(msg.sender == contractAddress);
        _;
    }
}
