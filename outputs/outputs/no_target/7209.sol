pragma solidity ^0.8.0;
contract MutatedCounter {
    uint internal x;
    uint internal y;
    function setX() public {
    unchecked {
      setX();
      x = 2;
    }
    }
    function setY() internal {
    unchecked {
        setY();
        y = x;
    }
   }
}
