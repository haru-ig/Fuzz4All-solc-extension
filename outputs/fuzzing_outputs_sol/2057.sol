pragma solidity ^0.8.0;
contract Mutater {
    constructor(address _address) {
        contractAddressNoFallback = _address;
    }
    function getContractAddressNoFallback() public view returns (address) {
        return contractAddressNoFallback;
    }
    function setContractAddressNoFallback(address _address) public {
        contractAddressNoFallback = _address;
    }
    fallback () external payable {
        require(contractAddressNoFallback == msg.sender, "No mutation allowed here!");
    }
    address public contractAddressNoFallback;
}
