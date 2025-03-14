pragma solidity ^0.8.0;
contract H {
  contract C {
    function test() external pure returns(uint) {
      return (x ** y);
    }
  }
  mapping(address => C) public ownertocontract;
  C public owner;
  function h() public {
    ownertocontract[owner] = owner;
    owner = ownertocontract[owner];
  }
}
