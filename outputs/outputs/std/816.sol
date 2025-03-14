pragma solidity ^0.8.0;
contract Mutated2 {
address arrayAddress = (uint())((uint(2**52) - 1) << 0);
constructor() public {
emit NewArray(arrayAddress);
}
}
