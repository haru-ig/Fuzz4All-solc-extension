pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  uint  counter;
  fallback() external payable {
    counter += value;
    counter --;
  }

  function set(uint newCounter) public returns (uint) {
    return counter = newCounter;
  }
}

pragma solidity ^0.8.0;


function sq(uint8 value) internal pure returns (uint8) {
  return value * value;
}

function sq(uint256 value) internal pure returns (uint16) {
  return value * value;
}

function sq(uint256 value) internal pure returns (uint32) {
  return value * value;
}

function sq(uint256 value) public pure returns (uint256) {
  return value * value;
}

contract M {

  struct Pair {
    uint from;
    uint to;
  }

  uint constant value = 4;
  uint256 public counter;
  uint public count;
  address payable  contractAddr;
  mapping(address => bool) public  contractAddrToBool;

  constructor(address payable _contractAddr)  {
    contractAddr = _contractAddr;
  }



  function pair(address _fromAddress, address _toAddress) internal  returns (bool)  {
    Pair memory a_pair = Pair({
      from : uint(_fromAddress),
      to : uint(_toAddress)
    });
    contractAddrToBool[_fromAddress] = true;
    contractAddrToBool[_toAddress] = true;
    count ++;
    emit P(_fromAddress,_toAddress, a_
