pragma solidity ^0.8.0;
contract Mutated {
function mutate() public pure returns (uint) {
return uint(
(uint256(
blockhash(block.number-1)
))+(block.timestamp-1)
);
}
}
