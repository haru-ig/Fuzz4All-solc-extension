pragma solidity ^0.8.0;
contract NonmutatedCounter {
   uint internal x;
   uint internal y;
   function zero() public {
    unchecked {
       x = 2;
    }
   }
   function setY() internal {
    unchecked {
      x += 2;

    }
   }
}


pragma solidity ^0.6.7;
library SafeMath {
   function add(uint256 x, uint256 y) internal pure returns(uint256 z) {
    unchecked {
     z = x + y;
    }
   }
   function sub(uint256 x, uint256 y) internal pure returns(uint256 z) {
    unchecked {
     z = x - y;
    }
   }
   function mul(uint256 x, uint256 y) internal pure returns(uint256 z) {
    unchecked {
     z = x * y;
    }
   }
   function div(uint256 x, uint256 y) internal pure returns(uint256 z) {
    unchecked {
     z = x / y;
    }
   }

   function mod(uint256 x, uint256 y) internal pure returns(uint256 z) {
    unchecked {
     z = x % y;
    }
   }
}

pragma solidity ^0.8.0;
contract Counter2 {
   uint internal x;
   uint internal y;
   function zero() public {
    unchecked {
       x = x + uint(-1e308);
    }
   }
   function setY() internal {
    unchecked {
      if (y == 0) {
        y++;
      }
    }
   }
}
