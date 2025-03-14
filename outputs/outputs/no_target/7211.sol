pragma solidity ^0.8.0;
contract OldMutatedCounter {
    uint internal x;
    uint internal y;
    function setX() public {
    unsetX();
    x = 2;
    }
    function setY() internal {
        unsetY();
        y = x;
    }
   }
