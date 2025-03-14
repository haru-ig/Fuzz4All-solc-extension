pragma solidity ^0.8.0;
contract MutedCounter {
    function __MutatedCounter_init() onlyOwner public {
        setX();
    }
    function setX() public {
      unchecked {
        x = 2;
      }
    }
    function getX() public view returns (uint) {
        return x;
    }
    function setY() internal {
      unchecked {
        y = x;
      }
    }
    function getY() public view returns (uint) {
        return y;
    }
}
