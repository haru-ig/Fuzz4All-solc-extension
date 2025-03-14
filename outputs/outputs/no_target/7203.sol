pragma solidity ^0.8.0;
contract Solidity080 {
   address addr;
   function f() public {
    unchecked {
      addr = msg.sender;
    }
   }
}
function createContract() public returns (address) {
   NonmutatedCounter nonMutated;
   uint y;

   nonMutated.setY();
   nonMutated.y = 0;
   nonMutated.zero();
   y = 10;
   assert(nonMutated.y == 10);
   NonmutatedCounter test;
   return address(test);
}
contract Solidity080Revert {
   function f() public {
    unchecked {
      if (addr!= address(0)) { revert(); }
    }
   }
}
contract Solidity080Checked {
   uint internal addrLen;
   function f() public {
    unchecked {
     addrLen = msg.data.length;
    }
   }
}
contract Solidity080Unchecked {
   function f() public {
    unchecked {
      return add(2);
    }
   }
}
contract Solidity080UncheckedWrapper {
   function f() public {
    unchecked {
      if (msg.sender == address(0)) { revert(); }
    }
   }
}
contract Solidity080UncheckedArithmetic {
   function f() public {
    unchecked {
      if(uint256(msg.sender) % 10 == 0) { revert(); }
    }
   }
}
contract Solidity080UncheckedArithmeticWrapper {
   function f() public {
    unchecked {
       if(uint256(msg.sender) % 2 == 0) { revert(); }
    }
   }
}
contract Solidity080SafeCounter {
   address public myBadAddress;
   function f() public {
    unchecked {
       if (msg.sender == myBadAddress) { revert(); }
    }
   }
}
contract Solidity080RevertWithMessage {
   function f() public {
    revert("Hello");
   }
}
contract Solidity080RevertWithMessageWrapper {
   function f() public {
    revert("Hello world");
   }
}
contract Solidity080InvalidOpcode {
   function f() public {



    assert(uint256(msg.data) % 10 == 0);
   }
}
contract Solidity080InvalidOpcodeWrapper {
   function f() public {
