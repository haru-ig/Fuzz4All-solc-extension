pragma solidity ^0.8.0;
contract Fallback {
  function fallback() public payable {

  }
}
contract Mutant {
  function modify() public payable {
   uint256 i;
   for (i = 0; i < 100; i++) {
     i += 1;
   }
  }
}



























/**
 * @dev The documentation describes the usage and functionality of the fallback function in Solidity contracts. A contract can have only one fallback function, which is executed if none of the other functions match the given function signature, or if no data was supplied at all. This function always receives data and must be marked payable to also receive Ether.

The fallback function can execute complex operations as long as there is enough gas passed on to it. However, it's recommended to always define a receive Ether function as well if you define a payable fallback function to distinguish Ether transfers from interface confusions.

The documentation also provides examples of contracts with fallback functions. In the first example, sending Ether to the contract will cause an exception because the fallback function does not have the `payable` modifier. In the second example, the fallback function is called for all messages sent to
