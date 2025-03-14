pragma solidity ^0.8.0;
contract Mutated2 {
function mutate(uint _i) public pure returns (uint) {
return uint(keccak256(abi.encodePacked(uint(keccak256(abi.encodePacked(keccak256(abi.encodePacked("The contract", " ", " ", "is", "\x07", "a", "test", "to", "determine", "\x07", "whether", "\x07", "using", "\x07", "these", "transactions", "\x07", "of", "\x07", "this", "project", "\x07", "is", "\x07", "safe", "\x07", "against", "\x07", "its", "\x07", "parties", "\x07", "or", "\x07", "to", "\x07", "its", "\x07", "products", "\x07", "or", "\x07", "data", "\x07", "transmitted", "\x07", "or", "\x07", "exchanged", "\x07", "by", "\x07", "or", "\x07", "inferred", "\x07", "from", "\x07", "your", "\x07", "usage", "\x07", "of", "\x07", "this", "project", ".")))
)));
}
}
