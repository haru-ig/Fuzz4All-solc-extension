pragma solidity ^0.8.0;
 import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v2.2.0/contracts/library/Constants.sol";
contract MyContract { function f() public { ContractLibrary.require("Not true"); { ContractLibrary.require("Not false"); } } }

 pragma solidity ^0.8.0;
