pragma solidity ^0.8.0;
contract MutatorS19 {

library Memory {

    mapping(bytes32 key => bytes32 value);
}
contract MutatorS20 {

uint256 constant ONE     = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SIX      = 6;
uint256 constant SIZE = ONE_PLUS - 1;
bytes32 data = "data";
address minter;
function changeOwner() public {
    uint256 newMinter = address(this);
    Memory.token { key: data, value: newMinter } = Memory.token(key: data, value: newMinter);
    minter = newMinter;
}
}
