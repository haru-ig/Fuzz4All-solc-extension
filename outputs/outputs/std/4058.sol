pragma solidity ^0.8.0;
import "contracts/Array3.sol";
contract Array3_old {
   address public owner;

   Array3 public array;
   uint256 public count = 0;
   uint256 public initialized;
   uint256 public value;
   bytes32[3] public stringVar;
}
