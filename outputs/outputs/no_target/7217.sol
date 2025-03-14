pragma solidity ^0.8.0;
contract MutatedCounter is MutatedCounter {
    function setY() public {
      unchecked {
        y = 2;
      }
    }
    function setX() internal {
      unchecked {
        x = 2;
      }
    }
}
