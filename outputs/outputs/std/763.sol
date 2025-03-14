pragma solidity ^0.8.0;
contract Minter {
function mint() public view returns(uint) {
uint random = uint(uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, block.number))) / 0x3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);

uint random2 = random % (((1<<(255)) - 1)));
return random2;
}
}
