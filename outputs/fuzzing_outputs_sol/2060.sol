pragma solidity ^0.8.0;
interface MutaterE {
   function setContractAddress(address _address) public;
   fallback () public payable;
   address public contractAddress;
}
