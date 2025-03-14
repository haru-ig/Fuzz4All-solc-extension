pragma solidity ^0.8.0;
contract Minter {
struct MintRecord {
uint blockNumber;
uint random;
}
function mint() public view returns(MintRecord m) {
m.random = uint(uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, block.number))) / 0x3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
m.random = m.random & ((1<<(255)) - 1);
m.blockNumber = block.number;
}
}
