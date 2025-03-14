pragma solidity ^0.8.0;
import "./Mutable.sol";
contract ContractWithConstants {
uint256 x;
uint256 y;
uint256 z;
constructor() public {
x = 1;
y = x + 1;
z = 1 + 1;
}
}
