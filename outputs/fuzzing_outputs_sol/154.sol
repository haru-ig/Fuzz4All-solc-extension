pragma solidity ^0.8.0;
contract CallFallbackFunctionThreePlusFallbackFunction {
    mapping(address => address) public contractOwner;
    fallback() public payable {
      }
    receive() payable external {
      }
}
