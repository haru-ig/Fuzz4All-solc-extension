pragma solidity ^0.8.0;
contract HelloWorld {
  function hey(address person) public view returns(string memory) {
    return "Hello "+addressToString(person);
}}
function addressToString(address a) internal pure returns(string memory) {
  return (bytes(a)).toString();}}
