pragma solidity ^0.8.0;
contract Mutater1 {
    constructor(address _address, uint _value) {
        contractAddress = _address;
        amount = _value;
    }
    function getContractAddress() public view returns (address) {
        return contractAddress;
    }
    function setContractAddress(address _address) public {
        contractAddress = _address;
    }
    fallback() external payable {
        require(contractAddress == msg.sender,
            "Cannot mutate in this method!");
    }
    function setAmount(uint _amount) public {
        amount = _amount;
    }
    address public contractAddress;
    uint public amount;
}
