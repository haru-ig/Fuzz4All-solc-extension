pragma solidity ^0.8.0;
contract A {
   uint public g;
   uint public r;
   function() external {
      emit AddToG(1);
   }
   function AddToG(uint x) public {
      g += x;
   }
}

pragma solidity ^0.8.0;
contract A {
   uint public g;
   uint public r;
   function() public {
      emit AddToG(1);
   }
   function AddToG(uint x) public {
      g += x;
      r -= x;
   }
}

pragma solidity ^0.8.0;
contract A {
   uint public g;
   uint public r;
   function() external {
      emit AddToG(1);
   }
   function AddToG(uint x) public {
      g += x;
      r -= x;
   }
}

pragma solidity ^0.8.0;
contract A {
   uint public g;
   uint public r;
   function () external {}
}
contract B {
   function () external {}
}
contract C {
   address public a;
   address public b;
   constructor () {
      a = address(new B());
      b = address(this);
   }
}
contract D {
   address public a;
   function() public {}
}
