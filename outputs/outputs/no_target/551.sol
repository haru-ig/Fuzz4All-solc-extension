pragma solidity ^0.8.0;
import '../Interface.sol';
interface Interface {
   function f() external pure returns (uint256, bytes32);
   event E(bytes32 eventBytes);
}
