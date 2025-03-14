pragma solidity ^0.8.0;
contract MutatedD {
    mapping(bytes4 => address) public contractAddresses;
    constructor() {
        contractAddresses[keccak256("keccak256")] = address(new MutatedB());
        contractAddresses[keccak256("keccak256(uint256)")] = address(new MutatedD());
        contractAddresses[keccak256("keccak256(address)")] = msg.sender;
        require(contractAddresses[keccak256("keccak256(address)")] == msg.sender, "Caller is not the owner");
    }
    function checkAddress() public pure returns (address) {
        return contractAddresses[keccak256("keccak256(address)")] == msg.sender? msg.sender : address(new MutatedD());
    }
    function checkMut() public pure returns (uint256) {
        require(contractAddresses[keccak256("keccak256(uint256)")] == address(new MutatedB()), "Caller is not the owner");
        return contractAddresses[keccak256("keccak256(uint256)")]!= address(new MutatedD())? 124 : 125;
    }
    function checkAddress2() public pure returns (address) {
        return contractAddresses[keccak256("keccak256(address)")] == address(new MutatedB())? msg.sender : address(new MutatedD());
    }
    function checkMut2() public pure returns (uint256) {
        require(contractAddresses[keccak256("keccak256(uint256)")] == address(new MutatedB()), "Caller is not the owner");
        return 24;
    }
}
