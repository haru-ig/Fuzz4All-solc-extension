pragma solidity ^0.8.0;
contract ContractFallback {
    address payable contractAddress;
    bytes memory contentsInMemory;
    constructor() {
        contractAddress = payable(msg.sender);
    }
    function writeData(bytes memory input) public {
        contentsInMemory = input;
    }
    function readData() public view returns (bytes memory) {
        return contentsInMemory;
    }
    fallback() payable {
        contractAddress.transfer(address(this).balance);
    }
}
