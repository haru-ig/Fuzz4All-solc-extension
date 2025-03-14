pragma solidity ^0.8.0;
contract Mutater2 {
    address public contractAddress;
    address calldata contractAddress2;
    constructor() {
        contractAddress = msg.sender;
    }
    function setContractAddress2(address _contractAddress2) public {
        contractAddress2 = _contractAddress2;
    }
    fallback() external payable {
        contractAddress = contractAddress2;
    }
}

pragma solidity ^0.8.0;
contract Mutater1 {
    address public contractAddress;
    address public contractAddress2;
    address calldata contractAddress3;
    address payable contractAddress4;
    bytes24 public contractAddress5;
    constructor (address payable address_1) {
        contractAddress = address_1;
    }

    function setContractAddress3(address _contractAddress3) public {
        contractAddress3 = _contractAddress3;
    }
    fallback() external payable {
        require(contractAddress == contractAddress3,
            "Cannot mutate in this method!");
        contractAddress2 = contractAddress3;
    }
}
