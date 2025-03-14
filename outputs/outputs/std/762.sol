pragma solidity ^0.8.0;
contract Minter {
function mint() public view returns(uint) {
uint random;
for (uint i = 32; i >= 0; i--) {
random <<= 8;
random |= uint(uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, block.number)) / 0x6000000000000000000000000000000000000000000000000000000000000000000) / (10 ** uint(i))) % (1**(2**(uint(i)))));
}
return random;
}
}
