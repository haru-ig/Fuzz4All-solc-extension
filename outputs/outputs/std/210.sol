pragma solidity ^0.8.0;
contract Mutate {
  address payable receiver;
  uint256[] balances;
  constructor(address payable _receiver) {
    balances.push(_receiver);
  }
  receive () external payable {}

  function getOneAmountBalance() returns(address payable);
  function getAllBalances() returns(address payable);
  function getAllBalancesByIndex(uint i) returns(address payable);
  function getAllBalancesByRange(uint256 from, uint256 to) returns(address payable);


  function setOneAmountBalance(address payable _receiver) returns(bool);
  function setAllBalances(address payable[] memory _receivers) returns(bool);
  function setAllBalancesByIndex(uint i, address payable _receiver) returns(bool);
  function setAllBalancesByRange(uint256 from, uint256 to, address payable[] memory _receivers) returns(bool);
}
