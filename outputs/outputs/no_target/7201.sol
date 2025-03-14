pragma solidity ^0.8.0;
contract MixedWithStateVariables {
   uint x;
   uint y;
   function getSum() public view returns (uint) {
    unchecked {
       return x+y;
    }
   }
   function setX(uint _x) internal {
    unchecked {


       x = _x + 2;
    }
   }
   function setY(uint _y) internal {
    unchecked {


       y = _y + 3;
    }
   }
}
contract MixedWithStateVariables2 is MixedWithStateVariables {
   function foo() internal {
    unchecked {
      setX(4);
    }
   }
}
contract MixedWithStateVariables3 is MixedWithStateVariables, MixedWithStateVariables2 {
   function setY(uint _y) public {
    unchecked {
       y++;
      setY(4);
    }
   }
}
contract MixedWithStateVariables4 is MixedWithStateVariables3 {
   function setY() public {
    unchecked {
      setY(3);
      setY(2);
    }
   }
   function getY() public view returns (uint) {
       return y;
   }
   function foo() public {
    unchecked {
       setX(4);
    }
   }
}
