pragma solidity ^0.8.0;
contract Fallback
{
    uint public x;
    function fallback() public payable {
        x += 1;
    }
    function getX() public view returns (uint) {
        return x;
    }
    function setX(uint y) public {
        x = y;
    }
}

contract CallerExample {
  Fallback public fallbackContract;
  uint256 public numX = 0;
  constructor () {
    numX = 3;
    fallbackContract = new Fallback();
  }
  function() external payable {
    fallbackContract.fallback.value(msg.value)();
  }
  function setX (uint y) public {
    fallbackContract.setX(y);
    fallbackContract.fallback.send(msg.value);
  }
  function getX() public view returns (uint) {
    return fallbackContract.getX();
  }
}

contract Mutator
{
    uint public numX;
    constructor () {
      numX = 2;
    }
    function setX (uint y) public {
      numX *= 2;
      if (y == 3) {
        numX /= 2;
      }
    }
}
