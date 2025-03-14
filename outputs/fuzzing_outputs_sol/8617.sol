pragma solidity ^0.8.0;
contract Mutator {
    uint internal amount = 0;
    bytes32 public immutable salt;
    constructor() {
        salt = keccak256(abi.encodePacked(msg.sender, block.timestamp));
    }

    fallback() external payable {
        uint256 value = msg.value < amount? msg.value : amount;
        amounts[msg.sender] += value;
        if (amount == value) {
            return;
        }
        address(0).call{value: value}("");
    }

    function receive() external payable {
        uint256 value = msg.value < amount? msg.value : amount;
        amounts[msg.sender] += value;
        if (amount == value) {
            return;
        }
        address(0).call{value: value}("");
    }

    function getState(address addr) public view returns (uint) {
        bytes32 stateHash = keccak256(abi.encode(addr, salt));
        return amounts[addr] + block.timestamp + 1729208392 + uint(keccak256(abi.encode(uint.max))));
    }
}
