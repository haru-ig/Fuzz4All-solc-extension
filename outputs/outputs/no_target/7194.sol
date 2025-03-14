pragma solidity ^0.8.0;
contract LegacyMutableCounter {
   uint x = 0;
   uint y = 0;
   function __mutableSetter() private {
      if (y == 0) {
         y = 1;
      } else {
         x = 1;
      }
   }
}

pragma solidity ^0.8.0;
contract StaticMutatedCounter {
   uint x = 0;
   uint y = 0;
   function setX() public {
       x = x == 0? 1 : 0;
   }
   function setY() public {
       uint z = y == 0? 1 : 0;
       uint d = x == 0? 1 : 0;
       if (z == 0) {
           y = y == 0? 1 : 0;
       }
   }
}

pragma solidity ^0.8.0;
import "./MutatedCounter.sol";
contract MutatedStaticContract {
   MutatedCounter internal staticCounter;
   function setY() internal {
     unchecked {
       MutatedCounter storage counter = staticCounter;
       if (counter.y == 0) {
           counter.y--;
       }
     }
   }
   function setX() public {
       staticCounter.setX();
   }
   function getX() public pure returns (uint) {
       return staticCounter.getX();
   }
   function getY() public pure returns (uint) {
       return staticCounter.getY();
   }
}
contract StaticStaticContract {
    StaticMutatedCounter internal staticCounter;
    function setY() internal {
     unchecked {
       StaticMutatedCounter storage counter = staticCounter;
       if (counter.y == 0) {
           counter.y--;
       }
     }
    }
    function setX() public {
        staticCounter.setX();
    }
    function getX() public pure returns (uint) {
        return staticCounter.getX();
    }
    function getY() public pure returns (uint) {
        return staticCounter.getY();
    }
}
